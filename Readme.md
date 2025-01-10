# 🛒 AI Model Marketplace 🚀

A decentralized marketplace for AI models built on Ethereum using smart contracts. Users can list, purchase, rate AI models, and creators can withdraw earnings. Powered by Truffle for smart contract development and Web3.js for Ethereum interaction.

---

## ✨ Features

- 📝 List AI Models: Add AI models with a name, description, and price.
- 💳 Purchase Models: Securely buy models with ETH.
- ⭐️ Rate Models: Leave ratings (1 to 5 stars) after purchase.
- 🔍 View Model Details: Explore name, description, price, and average ratings.
- 💰 Creator Withdrawals: Withdraw earnings from sales.

---

## 📂 Project Structure

The project consists of two main components:

1. Smart Contracts: Solidity-powered logic for the marketplace.
2. Frontend: HTML, CSS, and JavaScript interface to interact with Ethereum via Web3.js.

### 📁 Project Layout

```plaintext
/ai-model-marketplace
├── contracts/               # Smart contracts
│   ├── AIModelMarketplace.sol
├── migrations/              # Deployment scripts
│   ├── 2_initial_migration.js
├── index.html               # Frontend HTML page
├── style.css                # CSS styling
├── app.js                   # Web3.js logic
├── truffle-config.js        # Truffle configuration
├── package.json             # Dependencies
└── README.md                # Project documentation

⚙️ Installation Prerequisites
Node.js & npm: Download here

Truffle: Install globally:

bash
Copy code
npm install -g truffle
Ganache: Download here

MetaMask: Browser extension for Ethereum interaction.

🛠️ Steps to Set Up
Clone the Repository:
bash
Copy code
cd BT2 (and again)
Install Dependencies:
bash
Copy code
npm install
Configure the Ethereum Network:

Connect MetaMask to a test network (e.g., Ganache).
Update truffle-config.js with your network settings.
Deploy the Smart Contract:

bash
Copy code
truffle compile
truffle migrate --network development
Run the Frontend:
Start your lite-server to launch the interface.
🌟 How to Use the Marketplace
List a Model:

Navigate to "List a New Model."
Fill in Model Name, Description, and Price (ETH).
Click List Model.
View Available Models:

Explore listed models with their details.
Click Purchase or Rate.
Purchase a Model:

Click Purchase.
Confirm the ETH payment via MetaMask.
Rate a Model:

Click Rate.
Submit a rating between 1 and 5 stars.
Withdraw Funds:

Creators can withdraw their earnings from sales.
📜 Smart Contract Overview

Function	Description
listModel	Add a new AI model with name, description, and price.
purchaseModel	Purchase a listed model by paying ETH.
rateModel	Rate a purchased model (1 to 5 stars).
withdrawFunds	Withdraw funds from model sales.
getModelDetails	Retrieve details of a specific model.
getModelsCount	Get the total number of listed models.

🧰 Tools & Technologies
Truffle: Smart contract development framework.
Web3.js: JavaScript library for Ethereum interaction.
Ganache: Local blockchain for testing.
MetaMask: Browser wallet for Ethereum.

🤝 Contributing
Fork this repository.
Create a feature branch:
bash
Copy code
git checkout -b feature-name
Commit your changes:
bash
Copy code
git commit -m "Add a new feature"
Push to the branch:
bash
Copy code
git push origin feature-name
Open a pull request.
📄 License
This project is licensed under the MIT License.

📧 Contact
For questions or feedback, reach out via GitHub issues or contact the maintainers directly.
