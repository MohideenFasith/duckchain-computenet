from web3 import Web3

w3 = Web3(Web3.HTTPProvider("http://localhost:8545"))
contract_address = "0x..."  # deployed contract
abi = [...]  # replace with ABI after compilation

contract = w3.eth.contract(address=contract_address, abi=abi)

def create_job(input_data_cid, reward_eth, requester_key):
    account = w3.eth.account.privateKeyToAccount(requester_key)
    tx = contract.functions.createJob(input_data_cid).build_transaction({
        "from": account.address,
        "value": w3.to_wei(reward_eth, "ether"),
        "gas": 2000000,
        "gasPrice": w3.to_wei("50", "gwei"),
        "nonce": w3.eth.get_transaction_count(account.address),
    })
    signed_tx = w3.eth.account.sign_transaction(tx, requester_key)
    tx_hash = w3.eth.send_raw_transaction(signed_tx.rawTransaction)
    return tx_hash.hex()
