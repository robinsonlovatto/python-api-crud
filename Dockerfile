FROM python:3.12

# Installing Poetry
RUN pip install poetry

# Copy the content of current directory to the container
COPY . /src

# Define the workdir    
WORKDIR /src

# Install project dependencies
RUN poetry install

# Expose the port the application will use
EXPOSE 8501

# Define the entrypointto execute the Uvicorn server
ENTRYPOINT ["poetry", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8501"]