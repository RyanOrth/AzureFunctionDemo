from azure.storage.queue import QueueClient
from dotenv import load_dotenv
import os

def main():
    load_dotenv()
    connection_string = os.getenv('CONNECTION_STRING')

    queueClient = QueueClient.from_connection_string(conn_str=connection_string, queue_name='myqueue')
    queueClient.create_queue()


if __name__ == '__main__':
    main()