# Downloading the Image From Docker Registry
FROM FROM python:3.8

# Create app directory
WORKDIR /app

# Install app dependencies files
COPY requirements.txt ./
RUN pip3 install -r requirements.txt

# Bundle app source
COPY . .

# ENTRYPOINT
CMD [ "flask", "run","--host","0.0.0.0"]
