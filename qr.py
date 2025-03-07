import qrcode

# Вставь ссылку на GitHub
url = "https://github.com/SqueroDoc/Doc_rep"

# Создай QR-код
img = qrcode.make(url)

# Сохрани QR-код как изображение
img.save("github_qr.png")