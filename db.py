import mysql.connector
from mysql.connector import Error
from config import Config

def get_db_connection():
    try:
        connection = mysql.connector.connect(
            user=Config.USER,
            password=Config.PASSWORD,
            host=Config.HOST,
            database=Config.DATABASE,
            raise_on_warnings=Config.RAISE_ON_WARNINGS
        )
        return connection
    except Error as e:
        print(f"Error connecting to MySQL: {e}")
        return None

