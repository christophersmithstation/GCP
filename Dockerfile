FROM traefik:v2.4

COPY traefik.yml /etc/traefik/traefik.yml
COPY dynamic.yml /etc/traefik/dynamic.yml

# Ensure Traefik can write to acme.json
RUN touch /etc/traefik/acme.json
RUN chmod 600 /etc/traefik/acme.json

EXPOSE 80
EXPOSE 443

# Test after getting gcp up and running