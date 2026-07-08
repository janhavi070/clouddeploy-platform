from flask import Flask
import socket

app = Flask(__name__)

VERSION = "1.0.0"

@app.route("/")
def home():
    return "Welcome to CloudDeploy Platform!"

@app.route("/health")
def health():
    return {"status": "healthy"}, 200

@app.route("/version")
def version():
    return {"version": VERSION}

@app.route("/hostname")
def hostname():
    return {"hostname": socket.gethostname()}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
