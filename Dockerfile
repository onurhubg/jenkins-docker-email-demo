# Temel imaj olarak Python'un bir versiyonunu kullanıyoruz
FROM python:3.9-slim

# Çalışma dizinini ayarlıyoruz
WORKDIR /app

# Gerekli dosyaları container'a kopyalıyoruz
COPY . .

# Gerekli Python paketlerini yüklüyoruz
RUN pip install --no-cache-dir -r requirements.txt

# Container içinde çalıştırılacak komut
CMD ["python", "script.py"]
