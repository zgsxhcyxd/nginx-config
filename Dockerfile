FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY conf.d/ /etc/nginx/conf.d/

WORKDIR /etc/nginx

RUN mkdir html

# Nginx configuration
ADD . /etc/nginx/html

CMD ["nginx", "-g", "daemon off;"]
