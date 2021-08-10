import os

OPERATIONAL_SYSTEM = "linux" if os.name == "posix" else "windows"

HOST = str(open("config.txt", 'r').readlines()[0]).replace("\n", "")
PASSWORD = str(open("config.txt", 'r').readlines()[1]).replace("\n", "")

sqlcmd = f"sqlcmd -S {HOST} -U SA -P '{PASSWORD}' -i script_sql_to_import_database/{OPERATIONAL_SYSTEM}.sql"

os.system(sqlcmd)
