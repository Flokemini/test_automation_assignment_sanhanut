def simple_cipher_decrypt(encrypted, k):
    wheel = 'ZABCDEFGHIJKLMNOPQRSTUVWXY'
    result = ""

    for char in encrypted:
        index = wheel.index(char)
        new_index = (index - k) % len(wheel)
        result += wheel[new_index]

    return result