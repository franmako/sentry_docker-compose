FROM nginx:latest

#Copy custom nginx config & symfony app virtualhost
ADD nginx.conf /etc/nginx/nginx.conf

ADD sentry.conf /etc/nginx/conf.d/

RUN usermod -u 1000 www-data

CMD ["nginx"]