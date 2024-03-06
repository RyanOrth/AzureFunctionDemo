#!/bin/bash

# ANSI color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to activate virtual environment based on OS
activate_venv() {
    if [[ $(uname -s) == "Linux" || $(uname -s) == "Darwin" ]]; then
        source .venv/bin/activate
    elif [[ $(uname -s) == "MINGW"* || $(uname -s) == "CYGWIN"* ]]; then
        source .venv/Scripts/activate
    else
        echo -e "${RED}Unsupported operating system.${NC}"
        exit 1
    fi
}

# Navigate to the function-app directory
cd function-app || exit
echo -e "${GREEN}Creating virtual environment in function-app...${NC}"
python -m venv .venv
activate_venv
pip install -r requirements.txt
deactivate
echo -e "${GREEN}Virtual environment created and requirements installed in function-app.${NC}"

# Navigate to the client directory
cd ../client || exit
echo -e "${GREEN}Creating virtual environment in client...${NC}"
python -m venv .venv
activate_venv
pip install -r requirements.txt
deactivate
echo -e "${GREEN}Virtual environment created and requirements installed in client.${NC}"

echo -e "${GREEN}Script completed successfully.${NC}"
