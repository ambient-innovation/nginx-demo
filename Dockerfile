# Ein Beispiel für ein simples Dockerfile und weitere häufig verwendete Befehle. 
# Alle weiteren Infos unter https://docs.docker.com/engine/reference/builder/

# Beispiele für die Nutzung:
# ````
# docker build -t nginx-demo .
# docker run -p 80:80 nginx-demo
# docker run -p 80:80 -v ${PWD}/index.html:/usr/share/nginx/html/index.html nginx-demo
# ```

FROM nginx:1.15

# Standard-Ordner für folgende Befehle und Zugriff zur Runtime
# WORKDIR /usr/share/nginx/html

COPY index.html /usr/share/nginx/html/index.html

# Port im Docker-Netzwerk veröffentlichen und nach außen "bekannt" machen.
# EXPOSE 80

# Befehl zur Build-time ausführen
# RUN yarn  install

# Argument, welches man im build-Befehl über "--build-arg app_env=production" übergeben kann.
# ARG app_env
# RUN if [ ${app_env} = production ]; \
#	then \
#	yarn build; \
#	fi

# Standard Prefix für folgende Commands
# ENTRYPOINT [ "nginx" ]

# Default command if nothing specified
# CMD ["nginx", "-g", "daemon off;"]