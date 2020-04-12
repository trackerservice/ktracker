# ktracker
kafka based tracker service

Developed this microservice using spring boot with the hel of gradle DM. 

This service can be dockerized. 
to Dockerize:- 
1) Create an image: docker build . (use -t if you want to tag an image like `docker build -t ktracker:v1 .` OR `docker build -t ktracker .` takes 'latest' as a tag name)

2)Create a Container:  docker run -p 5000:8080 ImageId (e.g. docker run -p 5000:8080 ktracker:latest)
  where: port 5000 from host machine mapped to container port 8080
  
 verify: http:localhost:5000/  you should see a message 'Hey there'
 
 (OR)
 
 if you want to simply get the image from docker hub and to run on your local machine
 
 pull the image 'docker pull trackerservice/ktracker'
  then run 'docker run -p 5000:8080 trackerservice/ktracker'
  or
  execute 'docker run -p 5000:8080 trackerservice/ktracker'  -- this will pull the image from hub.docker.com and runs on your host
  ---fyi: you should have docker account and configured user credential on your host.
