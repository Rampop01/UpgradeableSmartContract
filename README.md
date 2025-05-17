# ProxyContractImplementation

##  Overview

This repository demonstrates a simplified implementation of the **EIP-1967 Proxy Standard** to enable smart contract upgradability in Solidity.

##  What is EIP-1967?

[EIP-1967](https://eips.ethereum.org/EIPS/eip-1967) defines **standard storage slots** for proxy contracts to store implementation addresses without interfering with logic contract storage.

It ensures:
- No collision between proxy and implementation storage.
- A consistent method of storing and retrieving the implementation address.

##  Why Proxy Contracts?

Smart contracts are immutable by design. Once deployed, their logic cannot be changed. Proxy contracts solve this by:
- Delegating calls to a separate logic contract.
- Allowing that logic contract to be upgraded via `upgradeTo`.

##  Folder Structure

## 🏗️ Folder Structure

```
contracts/
├── Proxy.sol         # EIP-1967 compliant proxy
├── LogicV1.sol       # Original logic
└── LogicV2.sol       # Upgraded logic
```



##  Security

- Only the owner can upgrade the contract.
- Uses standard storage slot to prevent conflicts.

## 🛠️ How It Works

1. Deploy LogicV1.
2. Deploy Proxy with LogicV1's address.
3. Interact with Proxy using LogicV1's ABI.
4. Upgrade to LogicV2 with `upgradeTo`.
5. Proxy now delegates to LogicV2.

##  References

- [EIP-1967: Proxy Storage Slot Standard](https://eips.ethereum.org/EIPS/eip-1967)
- [OpenZeppelin Upgrades Guide](https://docs.openzeppelin.com/upgrades/2.3/)
- [Solidity Docs](https://docs.soliditylang.org/)

---

##  Getting Started

To deploy and test using Hardhat or Remix:

- Compile and deploy `LogicV1`
- Deploy `Proxy`, passing the address of `LogicV1`
- Interact with Proxy using `LogicV1`'s ABI
- Upgrade using `upgradeTo(address of LogicV2)`
