from flask import Flask
from flask_cors import CORS
from dotenv import load_dotenv

load_dotenv()

def create_app():
    app = Flask(__name__)
    CORS(app)
    
    app.config.from_object('config.Config')
    
    with app.app_context():
        from .controllers import main_controller
        return app




