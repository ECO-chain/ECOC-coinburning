# 目的

一个很简单的智能合约指的是拥有不能退回的功能。ECOC 可以进入智能合约，但永远不能退出。 这个智能合约部署在 Mainnet 上，有2.06亿 ECOC 被发送到它。

# 智能合约详细信息

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

# 如何检查

有人怎么能检查出2.06亿个ECOC 是无条件永久锁定的？他必须做到以下几点：

- 阅读智能合约
- 使用编译器或工具进行编译（例如 [remix](https://remix.ethereum.org/))
- 编译器选项：evm version:byzantium，optimize:true，编译器版本0.4.26（commit 4563c3fc5d243411d84336c069f7b45891f65c35）
- CLI示例：

```
    solc--optimize--bin--abi--opcodes--evm版本byzantium lockForever.sol
```

- 在 ECOCHAIN Explorer [交易A](https://explorer.ecoc.io/address/72e6f8182b99ecbd7bf49f437ffe1f207d0c62bb), [交易B](https://explorer.ecoc.io/address/ea6763f3c6c4f4ebdffc07909301c41fabe9b7fc) 检查二元制代码或操作码. 字节码和操作码必须完全相同。
- 在 ECOCHAIN Explorer [交易A](https://explorer.ecoc.io/address/72e6f8182b99ecbd7bf49f437ffe1f207d0c62bb), [交易B](https://explorer.ecoc.io/address/ea6763f3c6c4f4ebdffc07909301c41fabe9b7fc) 查看智能合约的余额一定是的2.06亿

# 常见问题解答

Q： 你为什么要锁ECOC？为什么2.06亿 ECOC 币？
A： 有2亿枚 ECOC 币是预挖，其外的都是质押的。为了公平和经济系统平衡，我们必须毁掉它们。建议阅读白皮书为了了解更多细节。在协议层面 ECOC　不可能被毁。我们有两个选择：要么将它们发送到“零”地址，要么将它们永久锁定在智能合约中。我们选择第二种方案为了透明度，也更便于用户检查。

Q： 这些　ECOC 币将来能发行吗？
A： 不，不可能。

Q： 如果我把 ECOC 送到合同上会怎么样？
A： 寄来的硬币将永远丢失。请不要这样做，因为 ECOC 币将无法取回！

Q： 我有不同的其他相关问题。
A： 请给我们发送电子邮件 support<<@>>ecoc.io
