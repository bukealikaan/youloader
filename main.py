import yt_dlp
import os

url = input("Enter the video URL: ")

ytdlp_opts = {
    "format": "best",
    "outtmpl": "%(title)s.%(ext)s",
    "ffmpeg_location": r"C:\ffmpeg\bin\ffmpeg.exe"
}
with yt_dlp.YoutubeDL(ytdlp_opts) as ydl:
    info = ydl.extract_info(url)

    # yt_dlp'den alınan saniye formatını dakika ve saniyeye çevime
    duration = info.get('duration')
    minutes, seconds = divmod(duration, 60)

    os.system('cls' if os.name == 'nt' else 'clear')
    print("Title : ", info.get('title'))
    print(f"Duration : {minutes}:{seconds}")
    print("Views : ", info.get('view_count'))

    ydl.download([url])