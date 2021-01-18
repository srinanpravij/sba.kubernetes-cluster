FROM python:alpine3.7
RUN mkdir /sbaflaskapp

# set a directory for the app
WORKDIR /sbaflaskapp

# copy all the files to the container
COPY . /sbaflaskapp

# install dependencies
RUN pip install -r requirements.txt

# tell the port number the container should expose
EXPOSE 8080

# run the command
CMD ["python", "web.py"]




