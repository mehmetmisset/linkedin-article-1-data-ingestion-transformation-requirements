# Description: This file contains the credentials for the database connections. 
# The credentials are stored in a dictionary format.
secret_db = {
    "server"   : "misset.synology.me,1433",
    "database" : "secrets",
    "username" : r"sa",
    "password" : r"Bahar@2810" # Bahar@2810
}
target_db = {
    "server"   : "misset.synology.me,1433",
    "database" : "meta",
    "username" : r"sa",
    "password" : r"Bahar@2810" # Bahar@2810
}
blob_documentation = {
    "account"   : "demoasawedev",
    "secret"    : "Yahoo-Blob-SAS-Token",
    "container" : "$web"
}

# path to the executable of Python
ds_path_to_python = r'C:\Users\mehme\AppData\Local\Programs\Python\Python313\python.exe'

# path to the JDBC SQL Server Drivers (Jars)
ds_path_to_jdbc   = r'C:\Program Files\Microsoft JDBC Driver 12.8 for SQL Server\sqljdbc_12.8\enu\jars\mssql-jdbc-12.8.1.jre8.jar'
