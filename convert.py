import firebase_admin
from firebase_admin import credentials, firestore
import sys

docId = "1"

def set_string(name, markdown):
    cred = credentials.Certificate('./ServiceAccountKey.json')
    default_app = firebase_admin.initialize_app(cred)
    db = firestore.client()
    db.collection(f"topics/{docId}/articles").add({"name": name, "markdown": markdown})


def read_markdown(filename):
    with open(filename) as f:
        return f.read()

if __name__ == '__main__':
    article_name = sys.argv[1].split('.')[0]
    set_string(article_name, read_markdown(sys.argv[1]))
