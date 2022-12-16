import configargparse as argparse
from datetime import datetime

current_time = datetime.now().strftime('%Y_%m_%d_%H_%M_%S')
parser = argparse.get_argument_parser(description='FPGA Inference - ECE 6213 - OY + JR', default_config_files=[])

# Network level/General Params
parser.add_argument('--batch_size', type=int, default=4096, help='input batch size for training')
parser.add_argument('--epochs', type=int, default=1, help='number of epochs to train')
parser.add_argument('--lr', type=float, default=1.2, help='neural network learning rate')
parser.add_argument('--out_dir', default='')
parser.add_argument('--out_file', default='')
parser.add_argument('--log_weights', default=False, action='store_true')
parser.add_argument('--log_weights_precision', type=int, default=32, help='max. number of integer/floating bits in the exported weights (default: 32)')
parser.add_argument('--gen_data_rtl', default=False, action='store_true')
parser.add_argument('--gen_data_hls', default=False, action='store_true')
parser.add_argument('--train_rtl', default=False, action='store_true')
parser.add_argument('--train_hls', default=False, action='store_true')
parser.add_argument('--weight_dir', default=f'weight_logs/{current_time}/')
parser.add_argument('--loss', default='CrossEntropy')

def log_args(args):
    print("="*80)
    print('Network Learning Rate:', args.lr)
    print('Batch Size:', args.batch_size)
    print('Grad Method:', get_grad_method(args))
    print("="*80)