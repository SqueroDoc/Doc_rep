import pandas as pd
import re

# Функция для извлечения опыта работы в месяцах
def get_experience(arg):
    # Ищем количество лет и месяцев в строке
    years_match = re.search(r'(\d+)\s*(лет|года|год)', arg)
    months_match = re.search(r'(\d+)\s*(месяцев|месяц|мес)', arg)
    
    total_months = 0
    
    # Если в строке есть года
    if years_match:
        years = int(years_match.group(1))  # Извлекаем количество лет
        total_months += years * 12  # Переводим в месяцы

    # Если в строке есть месяцы
    if months_match:
        months = int(months_match.group(1))  # Извлекаем количество месяцев
        total_months += months  # Добавляем количество месяцев

    return total_months

# Пример данных (опыт работы)
data = pd.Series([
    "8 лет 3 месяца",  # Пример с годами и месяцами
    "3 года",          # Пример только с годами
    "1 год 9 месяцев", # Пример с годами и месяцами
    "2 года",          # Пример только с годами
    "6 месяцев",       # Пример только с месяцами
])

# Применяем функцию через apply
result = data.apply(get_experience)

# Выводим результат
print(result)
