# Written and tested using IDLE Python 3.5.2 Shell
# This is a caesar cipher encryption/decryption program written in Python
# By Joshua Aguirre

text = input('Enter the string you want to work with:\n')
text = text.upper()

answer = input('Do you want to encrypt or decrypt? (Write encrypt or decrypt)\n')

# While loop continues to run until input is correct.
while answer not in [ 'encrypt', 'decrypt', 'Encrypt', 'Decrypt', 'ENCRYPT', 'DECRYPT' ]:
    print('Only enter encrypt or decrypt.')
    answer = input('Do you want to encrypt or decrypt?\n')

if answer in [ 'encrypt', 'Encrypt' ]:
    textarray = list(text)
    cipherlist = []

# Non-alphabetic characters are purposely kept without change or encryption.
    for letter in textarray:
        if letter in [ 'X' ]:
            letter = 'A'
        elif letter in [ 'Y' ]:
            letter = 'B'
        elif letter in [ 'Z' ]:
            letter = 'C'
        elif ord(letter) < 65 or ord(letter) > 90:
            letter = letter
        else:
            letter = chr(ord(letter) + 3)
        cipherlist.append(letter)
    cipher = ''.join(cipherlist)
    print('Your ciphertext: ' + cipher)

if answer in [ 'decrypt', 'Decrypt' ]:
    textarray = list(text)
    cipherlist = []

    for letter in textarray:
        if letter in [ 'A' ]:
            letter = 'X'
        elif letter in [ 'B' ]:
            letter = 'Y'
        elif letter in [ 'C' ]:
            letter = 'Z'
        elif ord(letter) < 65 or ord(letter) > 90:
            letter = letter
        else:
            letter = chr(ord(letter) - 3)
        cipherlist.append(letter)
    cipher = ''.join(cipherlist)
    print('Your decrypted ciphertext: ' + cipher)

exit
