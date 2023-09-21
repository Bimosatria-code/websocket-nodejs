# Menggunakan image Node.js yang sudah ada
FROM node:14

# Menentukan direktori kerja dalam kontainer
WORKDIR /app

# Menyalin package.json dan package-lock.json ke dalam kontainer
COPY package*.json ./

# Menginstal dependensi
RUN npm install

# Menyalin semua file ke dalam kontainer
COPY . .

# Mengexpos port yang akan digunakan oleh server
EXPOSE 3000

# Menjalankan server saat kontainer dijalankan
CMD [ "node", "server.js" ]