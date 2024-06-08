# Voting Application using Solidity

This repository contains the source code for a decentralized voting application built on the Ethereum blockchain using Solidity smart contracts. The application provides a secure, transparent, and tamper-proof platform for conducting various types of voting processes.

## Features:

**Owner Management:**
  - Assign an owner who has special privileges, such as adding candidates and managing the voting process.

**Candidate Management:**
  - Add, retrieve, and manage details of candidates participating in the voting process.

**Voting Mechanism:**
  - Allow registered users to cast votes for their preferred candidates.
  - Ensure that each voter can vote only once and validate the candidate ID before casting a vote.

**Result Viewing:**
  - Retrieve and display the details of all candidates, including their ID, name, and vote count.
  - View the details of a specific candidate.

## Tools:

**Remix Ethereum IDE:** [remix.ethereum.org](https://remix.ethereum.org)
  - A web-based integrated development environment (IDE) for writing, testing, and deploying Ethereum smart contracts.

**MetaMask:** [metamask.io](https://metamask.io)
  - A browser extension that allows users to interact with the Ethereum blockchain and securely manage Ethereum accounts and transactions.

**Ganache:** [trufflesuite.com/ganache](https://www.trufflesuite.com/ganache)
  - A personal blockchain for Ethereum development that allows developers to deploy contracts, develop, and test their applications in a safe and deterministic environment.

## Setup Environment

**MetaMask:**
  - Go to the [MetaMask website](https://metamask.io/) and follow the instructions to install MetaMask for your browser.
  - Create a new wallet or import an existing one.
  - Connect MetaMask to your local Ganache network.

**Remix Ethereum:**
  - Open [Remix Ethereum IDE](https://remix.ethereum.org/) in your browser.

**Connecting Ganache to MetaMask:**
  - Open Ganache and create a new workspace.
  - Copy the RPC server URL from Ganache (e.g., `http://127.0.0.1:7545`).
  - In MetaMask, click on the network dropdown and select "Add Network."
  - Fill in the network details:
    - Network Name: Ganache
    - New RPC URL: *[Paste the URL from Ganache]*
    - Chain ID: 1337 (default for Ganache)
    - Currency Symbol: ETH
  - Save and connect to the new network.

**Connect MetaMask to Remix:**
  - In Remix IDE, click on the `Settings` tab.
  - Under `Plugin`, select `Solidity Compiler`.
  - Scroll down to `Environment` and select `Injected Web3`.
  - MetaMask will prompt you to connect your wallet. Confirm the connection.

## Deploy Contract

1. **Open Remix IDE.**
   - Navigate to [Remix Ethereum IDE](https://remix.ethereum.org/).

2. **Load the Voting.sol file:**
   - In the `File Explorers` tab, click on the folder icon.
   - Navigate to the location of the `Voting.sol` file and open it.

3. **Compile the smart contract:**
   - Click on the `Solidity Compiler` tab.
   - Ensure the appropriate compiler version is selected.
   - Click on `Compile Voting.sol`.

   <!-- Attach screenshot of the compiled contract -->

4. **Deploy the smart contract:**
   - Click on the `Deploy & Run Transactions` tab.
   - Select `Voting` from the contract dropdown.
   - Ensure `Injected Web3` is selected as the environment.
   - Click on `Deploy`.

   <!-- Attach screenshot of the deployment process -->

5. **Confirm the deployment:**
   - MetaMask will prompt you to confirm the transaction. Confirm the transaction to deploy the smart contract.

6. **Copy the deployed contract address:**
   - Once deployed, copy the contract address for future reference.

## Interact with the Contract

1. **Access the deployed contract:**
   - In Remix IDE, go to the `Deployed Contracts` tab.
   - Click on the deployed contract instance to expand the interface.

2. **Add candidates:**
   - Use the `addCandidate` function to add new candidates.
   - Enter the candidate's name and click on `transact`.

3. **Cast a vote:**
   - Use the `vote` function to cast a vote for a candidate.
   - Enter the candidate ID and click on `transact`.

4. **Get candidate details:**
   - Use the `getCandidate` function to retrieve details of a specific candidate.
   - Enter the candidate ID and click on `call`.

5. **View all candidates:**
   - Use the `getAllCandidates` function to retrieve and display details of all candidates.
   - Click on `call`.

6. **Check the total number of candidates:**
   - Use the `getNumCandidates` function to check the total number of candidates.
   - Click on `call`.

---
