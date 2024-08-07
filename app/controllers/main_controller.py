from flask import current_app as app, jsonify
from app.db import get_db_connection
from mysql.connector import Error
import json

@app.route('/', methods=['GET'])
def get_empresas():
    connection = get_db_connection()
    if connection is None:
        return jsonify({"error": "Failed to connect to the database"}), 500

    cursor = connection.cursor()

    query = """
    SELECT JSON_ARRAYAGG(
        JSON_OBJECT(
            'id', e.id,
            'nome', e.nome,
            'telefone', e.telefone,
            'logo', e.logo,
            'links', (
                SELECT JSON_ARRAYAGG(
                    JSON_OBJECT(
                        'url', l.url,
                        'name', l.name
                    )
                )
                FROM link l
                WHERE l.empresa_id = e.id
            )
        )
    ) AS empresas_json
    FROM empresa e;
    """

    try:
        cursor.execute(query)
        result = cursor.fetchone()
    except Error as e:
        print(f"Error executing query: {e}")
        return jsonify({"error": "Failed to retrieve data"}), 500
    finally:
        cursor.close()
        connection.close()

    if result and result[0]:
        empresas_json = result[0]
        empresas = json.loads(empresas_json)
        return jsonify(empresas)
    else:
        return jsonify([])

