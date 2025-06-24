FROM nginx:stable
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./date_and_v.txt /usr/share/nginx/html/date_and_v.txt
EXPOSE 80