FROM        docker.io/redhat/ubi9
RUN         dnf install nginx sudo -y
RUN         rm -rf /usr/share/nginx/html/*
COPY        ./html/ /usr/share/nginx/html/.
COPY        nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT  ["nginx", "-g", "daemon off;"]
EXPOSE      80
