# Azure Function and Azurite Demo

This is a demo of using an Azure Function with Azurite local storage emulator.

Azurite allows you to locally test applications that interact with Blob Containers, Queues, and Tables. This particular project demos an Azure Queue Trigger Function that responds to messages in an Azurite Storage Queue.

The project is grouped together in a docker compose application, which handles all of the networking and configuration.

## Installation

### Python Virtual Environment Creation and Package Install

In the project root directory, run the following command to create python virtual environments and install packages.

```sh
sh init.sh
```

### Building the Project

In the project root directory, run the following command to create the Azurite and Azure Function docker containers.

```sh
docker compose up
```

## Interacting with the Azurite Storage Queue

In the `client` folder, run the following command to create a new queue named `myqueue`.

```python
python CreateQueue.py
```

To send a message to the queue, run the following command.

```python
python SendMessage.py
```

To see the logs for queue creation and messages received by the Azure Function, view the logs in the docker compose application.

## Recommended Azure VS Code Extensions
- [Azurite by Microsoft](https://marketplace.visualstudio.com/items?itemName=Azurite.azurite)
- [Azure Tools by Microsoft](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-node-azure-pack)
