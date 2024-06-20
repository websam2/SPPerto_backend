import os
from dotenv import load_dotenv

# Carregar variáveis de ambiente de um arquivo .env
load_dotenv()

class Config:
    USER = os.getenv('DB_USER')
    PASSWORD = os.getenv('DB_PASSWORD')
    HOST = os.getenv('DB_HOST')
    DATABASE = os.getenv('DB_NAME')
    RAISE_ON_WARNINGS = True