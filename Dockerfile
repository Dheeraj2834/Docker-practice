FROM amazonlinux:2023

RUN dnf update -y && \
    dnf install -y nginx && \
    dnf clean all

COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]