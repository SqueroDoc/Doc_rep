import qrcode

# Вставь ссылку на GitHub
url = "https://github.com/username"

# Создай QR-код
img = qrcode.make(url)

# Сохрани QR-код как изображение
img.save("github_qr.png")