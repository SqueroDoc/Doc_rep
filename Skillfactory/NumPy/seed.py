import numpy as np

# Устанавливаем seed
np.random.seed(2021)

# Случайное число от 0 до 1
simple = np.random.rand()

# 120 чисел в диапазоне от -150 до 2021
randoms = np.random.uniform(-150, 2021, 120)

# Массив случайных целых чисел от 1 до 100 (3 строки, 2 столбца)
table = np.random.randint(1, 101, (3, 2))

# Четные числа от 2 до 16 (включительно)
even = np.arange(2, 17, 2)

# Копирование и перемешивание
mix = even.copy()
np.random.shuffle(mix)

# Получение 3 чисел из even без повторений
select = np.random.choice(even, 3, replace=False)

# Перемешивание select для triplet
triplet = select.copy()
np.random.shuffle(triplet)

# Вывод результатов
print("Случайное число simple:", simple)
print("Массив randoms:", randoms)
print("Массив table:\n", table)
print("Массив четных чисел even:", even)
print("Перемешанный массив mix:", mix)
print("Выбранные числа select:", select)
print("Перемешанные числа triplet:", triplet)
