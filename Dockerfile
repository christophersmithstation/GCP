FROM traefik:v2.4

COPY traefik.yml /etc/traefik/traefik.yml
COPY dynamic.yml /etc/traefik/dynamic.yml

EXPOSE 80
EXPOSE 443
EXPOSE 8080

CMD ["traefik"]
