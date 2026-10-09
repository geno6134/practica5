def convert_usd_to_rub(amount_usd: float):
    """Конвертирует сумму из долларов США (USD) в российские рубли (RUB).

    Принимает количество долларов, умножает его на фиксированный
    курс и возвращает полученную сумму в рублях.

    Args:
        amount_usd (float): Сумма в долларах для конвертации.

    Returns:
        float: Рассчитанная сумма в российских рублях.
    """
    USD_TO_RUB = 95.50
    return amount_usd * USD_TO_RUB

try:
    user_usd = float(input("Введите сумму в долларах ($): "))
    result_rub = convert_usd_to_rub(user_usd)
    formatted_usd = f"{user_usd:,.2f}".replace(",", " ")
    formatted_rub = f"{result_rub:,.2f}".replace(",", " ")
    print(f"Сумма в долларах: {formatted_usd} $")
    print(f"Сумма в рублях по курсу 95.50: {formatted_rub} руб.")
except ValueError:
    print("Ошибка: пожалуйста, введите корректное число.")
