# RSA Encryption
# by Joshua Aguirre
# This program encrypts a number using a simple implementation of RSA encryption
# Numbers above 83 break the algorithm because of the prime numbers I've chosen to use

number = int(input('Enter the number you want to encrypt [between 1-83]: '))


# Generate Values

prime1 = 7
prime2 = 15
n = prime1 * prime2
z = (prime1 - 1) * (prime2 - 1)
publickey = 5
privatekey = 17


# Encryption

value1 = number ** publickey

encryptednumber = value1 % n

print('Encrypted value:', encryptednumber)


# Decryption

value2 = encryptednumber ** privatekey

decryptednumber = value2 % n

print('Decrypted value:', decryptednumber)
