FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./

# Bağımlılıkları yükle
RUN npm install

# Proje dosyalarını kopyala
COPY . .

# Uygulama 3000 portunda çalışacak
EXPOSE 8080

# Uygulamayı başlat
CMD ["npm", "run", "build"]

# docker build -t demo-for-devops .

# docker run -p 3000:3000 demo-for-devops 
# docker run -p 3000:3000 -p 50000:50000 jenkins/jenkins:lts