FROM nginx:stable-alpine

# Copy the entire website folder
COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
