import psycopg2
from config import (
    POSTGRES_HOST,
    POSTGRES_PORT,
    POSTGRES_USER,
    POSTGRES_PASSWORD,
    POSTGRES_DB,
)


def execute_sql_file(file_path):
    try:
        conn = psycopg2.connect(
            host=POSTGRES_HOST,
            port=POSTGRES_PORT,
            user=POSTGRES_USER,
            password=POSTGRES_PASSWORD,
            dbname=POSTGRES_DB,
        )

        with open(file_path, "r") as file:
            sql_schema = file.read()

        with conn.cursor() as cursor:
            cursor.execute(sql_schema)
            conn.commit()
            print("All tables have been successfully created")

    except Exception as e:
        print(f"Error creating tables: {e}")
    finally:
        if conn is not None:
            conn.close()


if __name__ == "__main__":
    execute_sql_file("schema.sql")
