from flask import Flask

app = Flask(__name__)


def create_app():
    """
    Create a Flask application using the app factory pattern.

    :param settings_override: Override settings
    :return: Flask app
    """
    app = Flask(__name__)

    @app.route('/')
    def index():
        """
        Render a Hello World response.

        :return: Flask response
        """
        return '<h1>Hello, world! This is working!</h1>'

    return app

if __name__ == "__main__":

    # If using gunicorn
    create_app()
    # $ gunicorn -c gunicorn.py "hello.app:create_app()"
    #
    # Below runs without gunicorn
    #create_app().run(debug=True)
