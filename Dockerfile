FROM nginx:stable-alpine

# Copy the website source folder
COPY src/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
