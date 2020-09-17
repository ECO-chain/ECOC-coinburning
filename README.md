## Purpose
Very simple smart contract that has a payable fallback function and nothing more. ECOC can go in the smart contract but can never go out.
This smart contract is deployed on Mainnet and 206 million ECOC were sent to it.

## Smart contract details
(To be published later)

## How to check
How can someone check that 206 Million ECOC are unconditionaly locked forever? He must do the following:

- Read the smart contract [source code](https://https://github.com/ECO-chain/ECOC-coinburning/blob/master/ lockForever.sol)
- Complile using a compiler or a tool (for example [remix](https://https://remix.ethereum.org/))
- Compiler options: evm-version: byzantium , optimize: true, compiler version  0.4.26 (commit 4563c3fc5d243411d84336c069f7b45891f65c35)
- example for CLI:
```
	solc --optimize --bin --abi --opcodes --evm-version byzantium lockForever.sol
```
- check the binary code or the opcode on ECOCHAIN's [explorer](https://explorer.ecoc.io/address/). The bytecode and opcodes must be exactly the same.
- Check the balance of the smart contract at [explorer](https://explorer.ecoc.io/address/)
It must be **206,000,000**

### FAQ
**Q: Why do you lock The ECOC ? And Why 206 million coins ?**
A: 200 million coins where premined and the rest were staked. For reason of fairness and staking balance we must destroy them. You can read the white paper for more details. Destroying ECOC is not allowed on protocol level. We had two options: either send them to "zero" address or lock them forever in a smart contract. We decided the latter because it is more transparent and also easier for the users to check.

**Q: Can the coins be released in the future ?**
A: No, it is impossible.

**Q: What will happen if I send ECOC to the contract ?**
A: You will lose you coins forever. Don't!

**Q: I have a different question.**
A: Please email us at *support<<@>>ecoc.io*
