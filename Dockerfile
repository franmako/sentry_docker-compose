FROM nginx:latest

RUN rm /etc/nginx/nginx.conf

ADD sentry.conf /etc/nginx/nginx.conf

CMD ["nginx"]