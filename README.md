**<h1>💰 Payment Splitter</h1>**

**<h3>📜 Project Description</h3>**

This project is a **decentralized payment distribution system** built using the Clarity smart contract language and deployed on the **Stacks Blockchain**. The Payment Splitter automatically divides incoming STX payments between multiple predefined addresses based on their assigned shares, ensuring transparent and proportional fund distribution.

Unlike manual payment splitting that requires multiple transactions and is prone to human error, this smart contract handles everything automatically. The contract manages recipient configuration, payment reception, proportional calculations, and secure fund distribution — all without any centralized authority or manual intervention.

**<h3>🔭 Project Vision</h3>**

The vision behind this project is to **create a trustless and efficient payment distribution system** on the Stacks blockchain. By automating payment splits with transparent on-chain logic, we aim to:
* Eliminate manual errors and disputes in payment distribution processes.
* Provide complete transparency for all payment splits and recipient allocations.
* Enable instant and automatic fund distribution for businesses, DAOs, and content creators.
* Foster trust through immutable smart contract logic and verifiable transactions.

**<h3>⭐ Key Features</h3>**

* ✅ **Configure Recipients:** Contract owner can set up multiple recipients with their respective share percentages.
* 💸 **Automatic Payment Reception:** Incoming payments are securely received and held by the contract.
* 🔄 **Withdrawal System:** Recipients can claim their accumulated shares at any time through secure withdrawal mechanism.
* 🛡️ **Access Control:** Strong validation ensures only the contract owner can modify recipient configurations.
* 📊 **Balance Tracking:** Real-time tracking of total payments received and individual recipient shares.
* 💰 **Gas Efficient:** Optimized contract design using withdrawal pattern to minimize transaction costs.
* 🔐 **On-chain Logic:** Entire payment splitting logic is stored and computed transparently on-chain.

**<h3>🚀 Future Scope</h3>**

* 🪙 **Multi-Token Support:** Extend beyond STX to support SIP-010 fungible tokens and other digital assets.
* ⏰ **Time-based Splits:** Configure different split ratios for different time periods or milestones.
* 🎯 **Conditional Distributions:** Smart conditions based on external data, achievements, or performance metrics.
* 👥 **Multi-level Splitting:** Support hierarchical payment structures (company → departments → individuals).
* 🏛️ **Governance Features:** Voting mechanisms for recipients to propose and approve split ratio changes.
* 🌐 **Cross-chain Integration:** Bridge functionality for multi-blockchain payment distribution operations.

**<h3>Contract Details</h3>**
**Testnet Address:** `ST1HTBVD3JG9C05J7HBJTHGR0GGW7KXW28M5JS8QE.payment-splitter`

**<h3>Contract Functions:</h3>**

- **setup-payment-split:** Configure recipients and their shares (owner only)
- **split-payment:** Receive and hold payments for proportional distribution
- **withdraw-share:** Allow recipients to claim their proportional shares
- **get-recipient-shares:** Check individual recipient share allocation
- **get-total-shares:** View total configured shares
- **get-contract-balance:** Check total funds available for withdrawal

**<h3>🛠️ Tech Stack</h3>**

- **Blockchain:** Stacks Blockchain
- **Language:** Clarity
- **Development Tool:** Clarinet
- **Wallet Integration:** Leather Wallet, Xverse

**<h3>📸 Project Screenshots</h3>**

![Contract Deployment](https://github.com/joysarkar83/Payment-Splitter/blob/main/image1.png)
