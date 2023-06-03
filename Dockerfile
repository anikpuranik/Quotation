# Downloading the Image From Docker Registry
FROM python:3.8

# Create app directory
WORKDIR /app

# Install app dependencies files
#COPY requirements.txt ./
#RUN pip3 install -r requirements.txt

# Bundle app source
COPY . .

EXPOSE 5000
CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]
