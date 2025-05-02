# ERC20 Token for Sihaad International Community

Welcome to the repository for **[Sihaad International Community Token]**, an ERC20 token built to empower, incentivize and unite our community. This project leverages Foundry as the development framework and showcases best practices for blockchain development.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Technical Details](#technical-details)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Testing](#testing)
- [Deployment](#deployment)
- [Usage](#usage)
- [License](#license)

---

## Overview
This repository contains the smart contract code for **SIC**, a custom ERC20 token designed to serve as the backbone for Sihaad International Community's decentralized interactions. Built with Foundry, it provides:

- Standard ERC20 functionalities (transfer, approve, allowance).
- Minting and burning capabilities (optional).
- Comprehensive tests to ensure reliability.

## Features
- **Standards Compliance**: Fully compliant with the ERC20 standard.
- **Community Focus**: Features tailored to foster engagement and reward participation.
- **Scalable**: Easily deployable on Ethereum and other EVM-compatible networks.
- **Tested**: Includes a robust suite of tests to validate functionality.

## Technical Details
- **Token Name**: Sihaad International Community
- **Token Symbol**: SIC
- **Decimals**: 18 (default for ERC20 tokens)
- **Framework**: Foundry

## Getting Started

### Prerequisites
Ensure you have the following installed:
- [Foundry](https://getfoundry.sh/): Development framework for Ethereum
- Openzeppelin & npm (for additional tooling)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Lamma-maihadisi/sihaad-token-repo.git
   cd sihaad-token-repo
   ```

2. Install dependencies:
   ```bash
   forge install
   ```

3. Build the project:
   ```bash
   forge build
   ```

### Testing
Run the tests to ensure the contract functions as expected:
```bash
forge test -vv
```

## Deployment
Follow these steps to deploy the token:

1. Update the `DeploySihaadToken.s.sol` script with your desired parameter ( initial supply).
2. Deploy the contract using Foundry:
   ```bash
   forge script script/DeployToken.s.sol --broadcast --rpc-url <YOUR_RPC_URL>
   ```
3. Verify the contract on Etherscan (optional):
   ```bash
   forge verify-contract --chain <CHAIN_ID> <CONTRACT_ADDRESS> <CONTRACT_NAME>
   ```

## Usage
Interact with the deployed token using any Ethereum-compatible wallet or dApp. Example operations:

- **Transfer Tokens**:
  ```solidity
  token.transfer(recipient, amount);
  ```
- **Approve Spending**:
  ```solidity
  token.approve(spender, amount);
  ```

## License
This project is licensed under the MIT License (LICENSE).

---

### Connect with Me
I'm always excited to collaborate and learn. Reach out if you're interested in contributing or have questions about the project.

- **GitHub**: [Lamma-maihadisi](https://github.com/Lamma-maihadisi)
- **Twitter**: [maihadisee](https://x.com/maihadisee)
- **LinkedIn**: [Muhammad umar](www.linkedin.com/in/muhammad-umar-074103293)


Happy coding! 🚀
