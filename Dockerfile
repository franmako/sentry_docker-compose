FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY sentry.conf /etc/nginx/conf.d/

CMD ["nginx"]