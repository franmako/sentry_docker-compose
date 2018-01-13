Setup the sentry instance and dependencies
==========================================
1. Clone repository. cd into the repository
2. Use .env.dist to create .env file 
3. Change values in .env file
4. Run `docker-compose up -d redis`
5. Run `docker-compose up -d postgres`
6. Run `docker-compose up -d sentry`
7. Run `docker-compose exec sentry sentry upgrade` to setup database and create admin user
8. Run `docker-compose restart sentry`. 
9. Run `docker-compose build web`
10. Run `docker-compose up -d web`
10. Run `docker-compose up -d worker`
11. Run `docker-compose up -d cron`

Official Sentry docker documentation
====================================
* https://docs.sentry.io/server/installation/docker/ - Sentry - Installation with Docker¶ 