@echo off
REM -------------------------------
REM   Proje Kurulum ve Çalıştırma
REM -------------------------------

REM 1️⃣ Sanal ortam var mı kontrol et
IF NOT EXIST "venv" (
    echo Sanal ortam olusturuluyor...
    python -m venv venv
) ELSE (
    echo Sanal ortam zaten mevcut.
)

REM 2️⃣ Sanal ortamı aktif et
echo Sanal ortam aktif ediliyor...
call venv\Scripts\activate

REM 3️⃣ Pip güncelle
echo Pip guncelleniyor...
python -m pip install --upgrade pip

REM 4️⃣ Gerekli paketleri yukle
IF EXIST "requirements.txt" (
    echo Gerekli paketler yukleniyor...
    pip install -r requirements.txt
) ELSE (
    echo requirements.txt bulunamadi. Paketler yuklenemiyor!
)

REM 5️⃣ Programi calistir
echo Program baslatiliyor...
cls
python main.py

REM 6️⃣ Bitis
echo Kurulum ve calisma tamamlandi!
pause
