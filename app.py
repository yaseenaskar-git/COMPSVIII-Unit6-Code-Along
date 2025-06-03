from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return '<h1>Hello from Docker!</h1><p>This Python app is running in a container.</p>'

@app.route('/status')
def status():
    return {'status': 'running', 'message': 'Container is working!'}

if __name__ == '__main__':
    # host='0.0.0.0' allows external connections to the container
    app.run(host='0.0.0.0', port=8080, debug=True)