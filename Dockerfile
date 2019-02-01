FROM nginx:stable-alpine

COPY dist/ /usr/share/nginx/html/

CMD ["nginx-debug", "-g", "daemon off;"]