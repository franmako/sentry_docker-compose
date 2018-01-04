FROM nginx:latest

COPY nginx.conf /etc/nginx/conf.d/default.conf

#Needed to use php with nginx
RUN echo "upstream php-upstream { server sentry:9000; }" > /etc/nginx/conf.d/upstream.conf

CMD ["nginx"]