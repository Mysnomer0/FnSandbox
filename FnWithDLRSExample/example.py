import flask

from classify import classify

app = flask.Flask("FN with DLRS Python example")

@app.route("/", methods=["GET"])
def example():
    return flask.make_response(flask.jsonify({"Hello": "World!"}), 201)

if __name__ == "__main__":
    print('Hello World!')
    app.run(host="127.0.0.1", port = 8080)
