FROM nginx:latest

COPY sentry.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/sentry.conf /etc/nginx/sites-enabled/sentry.conf

RUN rm /etc/nginx/sites-enabled/default