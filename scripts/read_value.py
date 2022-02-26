from brownie import SimpleStorage, config, accounts


def read_contract():
    simple_storage = SimpleStorage[-1]
    # go to the most recent contract
    # brownie already has abi and address
    print(simple_storage.retrieve())


def main():
    read_contract()
