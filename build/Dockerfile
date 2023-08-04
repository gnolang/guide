# Use the official squidfunk/mkdocs-material image as the base image
FROM squidfunk/mkdocs-material

# Set the working directory inside the container
WORKDIR ../docs

# Copy requirements.txt to the working directory
COPY requirements.txt .

# Install required Python packages
RUN python -m pip install --upgrade pip setuptools wheel
RUN python -m pip install -r requirements.txt

# Expose port 8000 for the MkDocs development server
EXPOSE 8000