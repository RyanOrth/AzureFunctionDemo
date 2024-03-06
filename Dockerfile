FROM mcr.microsoft.com/azure-functions/python:4-python3.11

ENV AzureWebJobsScriptRoot=/home/site/wwwroot \
    AzureFunctionsJobHost__Logging__Console__IsEnabled=true

COPY ./function-app/requirements.txt /
RUN pip install -r /requirements.txt

COPY ./function-app /home/site/wwwroot