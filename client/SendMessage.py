from azure.storage.queue import QueueClient, BinaryBase64EncodePolicy
from dotenv import load_dotenv
import os

def main():
    load_dotenv()
    connection_string = os.getenv('CONNECTION_STRING')

    queueClient = QueueClient.from_connection_string(conn_str=connection_string, queue_name='myqueue')

    queueClient.send_message(BinaryBase64EncodePolicy().encode(content=bytes("This is my first message", 'utf-8')))


if __name__ == '__main__':
    main()