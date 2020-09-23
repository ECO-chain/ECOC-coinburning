## Purpose
Very simple smart contract that has a payable fallback function and nothing more. ECOC can go in the smart contract but can never go out.
This smart contract is deployed on Mainnet and 206 million ECOC were sent to it.

## Smart contract's details
(A)
"txid": "df357f171d65c0cf5082efbffd38723321fe64592ca60798fafcea3dcdbe59f7",
"sender": "ET7NJT5qZSaebyCMM7tYYwdbpxMBBuCRNr",
"hash160": "6d36635f9785a3ea63701d1c655a7ffa3e830ed3",
"address": "72e6f8182b99ecbd7bf49f437ffe1f207d0c62bb"
&nbsp;
(B)
  "txid": "dd384cb0c38550ed55360a0cb7ca084520e462b05e3d5e60ec377ee49fbe9535",
  "sender": "ET7NJT5qZSaebyCMM7tYYwdbpxMBBuCRNr",
  "hash160": "6d36635f9785a3ea63701d1c655a7ffa3e830ed3",
  "address": "ea6763f3c6c4f4ebdffc07909301c41fabe9b7fc"

## How to check
How can someone check that 206 Million ECOC are unconditionaly locked forever? He must do the following:

- Read the smart contract [source code](https://github.com/ECO-chain/ECOC-coinburning/blob/master/lockForever.sol)
- Complile using a compiler or a tool (for example [remix](https://remix.ethereum.org/))
- Compiler options: evm-version: byzantium , optimize: true, compiler version  0.4.26 (commit 4563c3fc5d243411d84336c069f7b45891f65c35)
- example for CLI:
```
	solc --optimize --bin --abi --opcodes --evm-version byzantium lockForever.sol
```
- check the binary code or the opcode on ECOCHAIN's explorer [here](https://explorer.ecoc.io/address/72e6f8182b99ecbd7bf49f437ffe1f207d0c62bb) and [here](https://explorer.ecoc.io/address/ea6763f3c6c4f4ebdffc07909301c41fabe9b7fc). The bytecode and opcodes must be exactly the same.
- Check the balance of the smart contracts at [here](https://explorer.ecoc.io/address/72e6f8182b99ecbd7bf49f437ffe1f207d0c62bb) and [here](https://explorer.ecoc.io/address/ea6763f3c6c4f4ebdffc07909301c41fabe9b7fc)
The total must be **206,000,000** ECOC

### FAQ
**Q: Why do you lock The ECOC ? And Why 206 million coins ?** 
A: 200 million coins where premined and the rest were staked. For reason of fairness and staking balance we must destroy them. You can read the white paper for more details. Destroying ECOC is not allowed on protocol level. We had two options: either send them to "zero" address or lock them forever in a smart contract. We decided the latter because it is more transparent and also easier for the users to check.

**Q: Can the coins be released in the future ?** A: No, it is impossible.

**Q: What will happen if I send ECOC to the contract ?** A: The coin sent over will be lost forever. Please DO NOT do that as the coin will not be retrievable!

**Q: I have a different question.** A: Please email us at *support<<@>>ecoc.io*
