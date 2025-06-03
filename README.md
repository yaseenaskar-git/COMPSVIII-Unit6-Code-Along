# Unit 6 Code Along - Python App

A simple Flask web application demonstrating Docker containerization.

## Files

- `app.py` - Main Flask application
- `requirements.txt` - Python dependencies  
- `Dockerfile` - Instructions for building the Docker image
- `README.md` - This file

## Running Locally (without Docker)

If you have Python and Flask installed:

```bash
pip install -r requirements.txt
python app.py
```

Visit http://localhost:8080

## Running with Docker

After creating your `Dockerfile`, you can build the image and run the container with the commands below.

### Build the Image

```bash
docker build -t my-python-app .
```

### Run the Container

```bash
docker run -p 8080:8080 my-python-app
```

Visit http://localhost:8080

### Container Management

View running containers:
```bash
docker ps
```

Stop the container:
```bash
docker stop CONTAINER_ID
```

Start the container again:
```bash
docker start CONTAINER_ID
```

Remove the container:
```bash
docker rm CONTAINER_ID
```

## Endpoints

- `/` - Home page with welcome message
- `/status` - API endpoint returning JSON status