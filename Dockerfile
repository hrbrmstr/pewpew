FROM node:latest
EXPOSE 8080
WORKDIR /opt/pewpew
COPY . /opt/pewpew
RUN npm install http-server -g
RUN mkdir -p /opt/pewpew
CMD ["http-server","-a","0.0.0.0","-p","8080","/opt/pewpew"]

