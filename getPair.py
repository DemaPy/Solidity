import json
from web3 import Web3

def getPair(first, second):
    factory = '0xca143ce32fe78f1f7019d7d551a6402fc5350c73'
    contract = web3.eth.contract(address=Web3.toChecksumAddress(factory), abi=json.loads('[{"constant":true,"inputs":[{"internalType":"address","name":"","type":"address"},{"internalType":"address","name":"","type":"address"}],"name":"getPair","outputs":[{"internalType":"address","name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"}]'))
    print(contract.functions.getPair(first, second).call())


if __name__== '__main__':
    provider="https://bsc-dataseed.binance.org/"
    web3 = Web3(Web3.HTTPProvider(provider)) #Нода bsc (сеть)
    first = input('Первый токен: ')
    second = input('Второй токен: ')
    getPair(first, second)
