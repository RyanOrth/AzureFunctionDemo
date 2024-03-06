from azure.storage.queue import QueueClient, BinaryBase64EncodePolicy
from dotenv import load_dotenv
import os

def encode_message(message: str):
    return BinaryBase64EncodePolicy().encode(content=bytes(message, 'utf-8'))

def main():
    load_dotenv()
    connection_string = os.getenv('CONNECTION_STRING')

    queueClient = QueueClient.from_connection_string(conn_str=connection_string, queue_name='myqueue')

    queueClient.send_message(encode_message("This is my first message"))


if __name__ == '__main__':
    main()