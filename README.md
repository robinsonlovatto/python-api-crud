# Python API CRUD
A simple project that an API for database operations.

## Starting the project from scratch
```bash
pyenv local 3.12.1   
poetry init    
poetry env use 3.12.1     
poetry shell     
poetry add fastapi  
poetry add "uvicorn[standard]"
poetry add sqlalchemy   
```

## Cloning the project
```bash
git clone https://github.com/robinsonlovatto/python-api-crud
cd python-api-crud
poetry shell
poetry install

# run the server
poetry run uvicorn main:app --reload
```

## Building Docker image and running it
```bash
docker build -t my-python-image .
docker run -d -p 8501:8501 --name my-python-container my-python-image
```

## Docs and API Client
```bash
http://localhost:8501/docs
```









