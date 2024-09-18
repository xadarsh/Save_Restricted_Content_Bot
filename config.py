
from os import getenv

API_ID = int(getenv("API_ID", "28316155"))
API_HASH = getenv("API_HASH", "e3499ac331a8df93997c1680366f2327")
BOT_TOKEN = getenv("BOT_TOKEN", "7093608856:AAHE86oSFT3jA1JlS7C6z5nUuVtvt9_d7K4")
OWNER_ID = int(getenv("OWNER_ID", "197064718"))
MONGODB_CONNECTION_STRING = getenv("MONGO_DB", "mongodb+srv://janezimpuenio:pPZqoHnziVesiE5X@cluster0.c7e4w.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0")
LOG_GROUP = int(getenv("LOG_GROUP", "-1002183779903"))
FORCESUB = getenv("FORCESUB", "-1002178727651")
DEFAULT_SESSION = getenv("DEFAULT_SESSION", "") # this is just to help if you dont want to force your bot user to login or if they not interested
