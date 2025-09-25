from flask import Flask
app = Flask(__name__)
 
@app.route('/')
def index():
    return "<h1>Hello from Dockerized Flask app!</h1>"
 
if __name__ == '__main__':
    # listens on all interfaces so Docker can expose it
    app.run(host='0.0.0.0', port=5000)
