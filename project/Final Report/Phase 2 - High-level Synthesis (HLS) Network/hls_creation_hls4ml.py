import hls4ml
import torch
import numpy as np

'''
    Goal: Convert the pretrained neural network model to FPGA firmware with hls4ml
    Using https://github.com/fastmachinelearning/hls4ml-tutorial/blob/master/part7_deployment.ipynb as reference.
'''

# Load the [trained] PyTorch model, and create its configuration
model = torch.load('data_hls/mlp_hls.pt')

part = "xc7z045ffg900-2"
board = "mini_itx_7z045"

backends = ["Vivado", "VivadoAccelerator"]
# VivadoAccelerator incorrectly changes the board part to be Pynq-Z2, so we can't take advantage of the wrapping functionality it offers
# Vivado on the other hand produces an IP that has multiple input/output streams. This is not what we need since connections to the Zynq PS expect a unified interface.
# Ongoing: Investigate writer differences
backend = backends[1]

# Make an hls4ml config & model

WL, FL = 16, 8
output_dir = f'test1_{WL}_{FL}_{backend}/'

config = hls4ml.utils.config_from_pytorch_model(model, granularity='model', default_precision=f'ap_fixed<{WL}, {FL}>', default_reuse_factor=1)

'''
{
    'XilinxPart': 'xcku115-flvb2104-2-i', 
    'Board': 'pynq-z2', 'ClockPeriod': 5, 
    'IOType': 'io_parallel', 
    'HLSConfig': {}, 
    'AcceleratorConfig': {'Interface': 'axi_stream', 'Driver': 'python', 'Precision': {'Input': 'float', 'Output': 'float'}}}
'''

config['IOType'] = 'io_parallel'
config['AcceleratorConfig'] = {'Interface': 'axi_stream', 'Driver': 'python', 'Precision': {'Input': 'float', 'Output': 'float'}}

hls_model = hls4ml.converters.convert_from_pytorch_model(model, 
                                                        input_shape=(1, 18 * 18),
                                                        output_dir=output_dir,
                                                        hls_config=config,
                                                        backend=backend,
                                                        board=board,
                                                        part=part)

# Compile, predict
hls_model.compile()

hls4ml.utils.plot_model(hls_model, show_shapes=True, show_precision=True, to_file=f'{output_dir}network_diagram.png')

X_test = np.load('data_hls/X_test.npy')
y_test = np.load('data_hls/y_test.npy')
y_hls = hls_model.predict(np.ascontiguousarray(X_test))

X_test = torch.from_numpy(X_test)
y_net = model(X_test.float()).detach().numpy()

print('PyTorch Network Output', y_net[-1])
print('HLS Network Output', y_hls[-1])

# Let's see how the performance compares to the PyTorch network on the entire test dataset
# As we alter the precision of the hls model, we expect to see an accuracy drop

total_preds = 10000
correct_net = (np.argmax(y_net, axis=1) == y_test).sum().item()
correct_hls = (np.argmax(y_hls, axis=1) == y_test).sum().item()

print('PyTorch Accuracy (%):', (correct_net / total_preds) * 100)
print('hls4ml Accuracy (%):', (correct_hls / total_preds) * 100)

# Saving predictions for comparison with the predictions in hardware

np.save('data_hls/y_net.npy', y_net)
np.save('data_hls/y_net.npy', y_net)

# We can now synthesize the hls model using Vivado HLS directly through the hls4ml library, and export the IP
# Note: This step requires a Vivado license.
# Note: While the C-Synthesis is running, we can monitor the progress looking at the log file by opening a terminal from the notebook home, and executing:
# We require Vivado HLS for this step (tested with 2019.1 on functor, see logs from 10/22/2022. Correct version has to be sourced and errors have to be resolved/patched)
print("Attempting hls_model.build()")
# hls_model.build(csim=False, export=True)

# hls4ml.report.read_vivado_report(f'hls4ml_16_8_{backend}/')