# Usa l'immagine leggera di Nginx basata su Alpine
FROM nginx:alpine

# Imposta la directory di lavoro dove Nginx cerca i file da servire
WORKDIR /usr/share/nginx/html/

# Rimuovi i file di default di Nginx per evitare conflitti
RUN rm -rf ./*

# Copia tutti i file della tua repository (incluso index.html) 
# direttamente nella cartella di Nginx
COPY . .

# Espone la porta 80
EXPOSE 80

# Avvia Nginx
CMD ["nginx", "-g", "daemon off;"]