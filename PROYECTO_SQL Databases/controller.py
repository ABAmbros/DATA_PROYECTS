import sqlite3 as sql


def createDB():
    conn = sql.connect("AAP_eci_database.sql")
    conn.commit()
    conn.close()


def createTable():
    conn = sql.connect("AAP_eci_database.sql")
     

if __name__ == "__main__":
    createDB()