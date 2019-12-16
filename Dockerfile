#Grab the latest alpine image
FROM oscarfonts/geoserver:latest

ADD ./webapp /var/local/geoserver
WORKDIR /var/local/geoserver

# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku			
CMD gunicorn --bind 0.0.0.0:$PORT wsgi 
