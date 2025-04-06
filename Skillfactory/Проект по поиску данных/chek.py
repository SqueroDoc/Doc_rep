import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
from scipy import stats
import numpy as np
import statsmodels.api as sm
import xport
import scipy  # Добавляем общий импорт SciPy

print("="*50)
print("Проверка библиотек:")
print(f"1. pandas: {pd.__version__}")
print(f"2. SciPy: {scipy.__version__}")  # Правильный способ проверки версии SciPy
print(f"3. NumPy: {np.__version__}")
print(f"4. Seaborn: {sns.__version__}")
print(f"5. Matplotlib: {plt.matplotlib.__version__}")

print("\nПроверка функций stats:")
try:
    # Тестируем основные функции
    data = [1, 2, 3, 4, 5]
    t_test = stats.ttest_1samp(data, 3.0)
    print(f"Тест t-test выполнен: statistic={t_test.statistic:.3f}, pvalue={t_test.pvalue:.3f}")
    print("✓ Все ключевые функции работают")
except Exception as e:
    print(f"Ошибка тестирования: {str(e)}")

print("="*50)