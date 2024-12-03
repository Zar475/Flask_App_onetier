#use the pythin image as a base image
FROM python:3.9-slim


#setting up the working directory inside the container
WORKDIR /app

#copy the reuirement.txt file inside the container and isntall the dependencies
COPY requirements.txt .


#install the required python packages
RUN pip install --no-cache-dir -r requirements.txt


#copy the whole file including code and other files from the source of host to destination of container
COPY . .

#expose the port 5000 as required. app will run on this port
EXPOSE 5000


#command line, flask app will run as the container will up
CMD ["python", "app.py"]
