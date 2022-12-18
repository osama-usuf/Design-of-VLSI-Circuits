from flask import Flask, render_template, Response, send_file
import cv2
import os

app = Flask(__name__)
camera = cv2.VideoCapture(0) # 1 for USB webcam, idx depends on connected port

img_folder = os.path.join('static')
app.config['UPLOAD_FOLDER'] = img_folder

def gen_frames():  # generate frame by frame from camera
    while True:
        # Capture frame-by-frame
        success, frame = camera.read()  # read the camera frame
        if not success:
            break
        else:
            width, height = 28, 28
            center_crop = False
            resize = False
            # Center-crop and resize frame
            if (center_crop):
            # center = frame.shape
                x = center[1]/2 - width/2
                y = center[0]/2 - height/2
                frame = frame[int(y):int(y+height), int(x):int(x+width)]
            if (resize):
            # Resize
                frame = cv2.resize(frame, (width, height), interpolation = cv2.INTER_AREA)
            # Mirror the source
            frame = cv2.flip(frame, 1) 
            ret, buffer = cv2.imencode('.jpg', frame)
            frame = buffer.tobytes()
            yield (b'--frame\r\n'
                   b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n')  # concat frame one by one and show result

@app.route('/video_feed')
def video_feed():
    #Video streaming route. Put this in the src attribute of an img tag
    return Response(gen_frames(), mimetype='multipart/x-mixed-replace; boundary=frame')

@app.route('/')
@app.route('/index')
def index():
    if (os.path.exists('static/last_image.jpg')):
        full_filename = os.path.join(app.config['UPLOAD_FOLDER'], 'last_image.jpg')
    else:
        full_filename = os.path.join(app.config['UPLOAD_FOLDER'], 'default.png')
    return render_template('index.html', last_image = full_filename)

@app.route('/capture_image', methods = ['GET'])
def capture_image():
    # Capture frame-by-frame
    success, frame = camera.read()  # read the camera frame
    if not success:
        return
    else:
        # Mirror the source
        frame = cv2.flip(frame, 1) 
        path = 'static/last_image.jpg'

        for filename in os.listdir('static/'):
            if filename.startswith('last_'):  # not to remove other images
                os.remove('static/' + filename)

        cv2.imwrite(path, frame)

        return send_file(path, as_attachment=True)

if __name__ == '__main__':
    app.run(host="0.0.0.0", debug=True)