from flask import Flask, jsonify
import socket
import os

app = Flask(__name__)

APP_NAME = os.getenv("APP_NAME", "CloudDeploy Platform")
ENVIRONMENT = os.getenv("ENVIRONMENT", "development")
VERSION = os.getenv("VERSION", "1.0.0")
BUILD_NUMBER = os.getenv("BUILD_NUMBER", "local")


@app.route("/")
def home():
    return jsonify({
        "application": APP_NAME,
        "environment": ENVIRONMENT,
        "version": VERSION,
        "build": BUILD_NUMBER,
        "hostname": socket.gethostname(),
        "status": "healthy"
    })


@app.route("/health")
def health():
    return jsonify({
        "status": "healthy"
    }), 200


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
