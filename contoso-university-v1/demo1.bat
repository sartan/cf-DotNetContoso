cf push contoso-demo-v1 -b https://github.com/ryandotsmith/null-buildpack.git -s windows2012R2 --no-start
cf enable-diego contoso-demo-v1
cf set-health-check contoso-demo-v1 none
cf bind-service contoso-demo-v1 contoso-demo-sql
cf bind-service contoso-demo-v1 contoso-demo-queue
cf start contoso-demo-v1
cf map-route contoso-demo-v1 YOUR_DOMAIN -n contoso
