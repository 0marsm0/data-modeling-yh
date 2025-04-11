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
        # Подключаемся к базе данных
        conn = psycopg2.connect(
            host=POSTGRES_HOST,
            port=POSTGRES_PORT,
            user=POSTGRES_USER,
            password=POSTGRES_PASSWORD,
            dbname=POSTGRES_DB,
        )

        # Читаем SQL файл
        with open(file_path, "r") as file:
            sql_script = file.read()

        # Создаем курсор и выполняем скрипт
        with conn.cursor() as cursor:
            cursor.execute(sql_script)
            conn.commit()
            print("Все таблицы успешно созданы!")

    except Exception as e:
        print(f"Ошибка при создании таблиц: {e}")
    finally:
        if conn is not None:
            conn.close()


if __name__ == "__main__":
    execute_sql_file("sql/schema.sql")
