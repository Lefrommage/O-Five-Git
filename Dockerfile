FROM nginx:alpine

# Maak de directory aan voor de webroot (indien nodig)
RUN mkdir -p /usr/share/nginx/html

# Maak een buildtime.txt met de huidige datum/tijd
RUN date > /usr/share/nginx/html/buildtime.txt

# Kopieer de HTML-bestanden van jouw project
COPY html/ /usr/share/nginx/html

EXPOSE 80
