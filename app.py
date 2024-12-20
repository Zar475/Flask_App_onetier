from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({"message": "Welcome to your Flask app running in Docker! *** webhooks triggers with PR ***"})

@app.route('/about')
def about():
    return jsonify({"message": "This is a simple Flask app running inside a Docker container!"})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5007)
