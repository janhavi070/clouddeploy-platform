from flask import Flask, jsonify
import socket
import os

app = Flask(__name__)

APP_NAME = os.getenv("APP_NAME", "CloudDeploy Platform")
ENVIRONMENT = os.getenv("ENVIRONMENT", "development")
VERSION = os.getenv("VERSION", "1.0.0")

BUILD_NUMBER = os.getenv("BUILD_NUMBER", "local")
GIT_COMMIT = os.getenv("GIT_COMMIT", "unknown")

DB_USERNAME = os.getenv("DB_USERNAME", "not-set")
DB_PASSWORD = os.getenv("DB_PASSWORD", "not-set")


@app.route("/")
def home():
    return jsonify({
        "application": APP_NAME,
        "version": VERSION,
        "environment": ENVIRONMENT,
        "build": BUILD_NUMBER,
        "git_commit": GIT_COMMIT,
        "hostname": socket.gethostname(),
        "database_connected": DB_PASSWORD != "not-set",
        "database_user": DB_USERNAME,
        "status": "healthy"
    })


@app.route("/health")
def health():
    return jsonify({
        "status": "healthy",
        "application": APP_NAME,
        "version": VERSION,
        "environment": ENVIRONMENT,
        "build": BUILD_NUMBER,
        "git_commit": GIT_COMMIT
    }), 200


@app.route("/version")
def version():
    return jsonify({
        "application": APP_NAME,
        "version": VERSION,
        "build": BUILD_NUMBER,
        "git_commit": GIT_COMMIT
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
