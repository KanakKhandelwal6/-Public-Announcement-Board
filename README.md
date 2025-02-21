# -Public-Announcement-Board
# Public Announcement Board - On-Chain dApp

This project is a simple decentralized application (dApp) built on the Ethereum blockchain using Solidity. The purpose of this application is to provide a public announcement board where users can post and view public messages securely and immutably on-chain.

## Features

- **Post Public Announcements:** Users can post text messages (announcements) on the blockchain.
- **Immutable Records:** All posted messages are stored on-chain, making them publicly accessible and tamper-proof.
- **View Announcements:** Users can view all announcements made on the board with the option to retrieve individual posts by index.
- **No Input on Deployment:** The contract does not require any input during deployment, making it easy to deploy and use.
- **Transparent and Decentralized:** As a blockchain-based application, all announcements are publicly visible to everyone, ensuring transparency.

## How It Works

1. **Post a Message:** Any user can call the `postAnnouncement(string memory message)` function to post a message on the board. This function stores the message, the address of the sender, and the timestamp of when it was posted.
2. **View Announcements:** Users can use the `getAnnouncementsCount()` function to retrieve the total number of posted messages and `getAnnouncement(uint256 index)` to view a specific announcement by its index in the list.
3. **Event Logging:** When a new message is posted, a `NewAnnouncement` event is emitted, containing the sender's address, message, and timestamp.

## Contract Address

The contract has been successfully deployed to the [EduChain](https://edu-chain.example) network. You can interact with the contract at the following address:

**Deployed Contract Address:**

Feel free to interact with the contract and post your announcements. You can view and interact with this contract via Remix IDE, or integrate it into a front-end dApp.

## Functions

- **`postAnnouncement(string memory message)`** - Allows users to post a new announcement. The message is saved on-chain.
- **`getAnnouncementsCount()`** - Returns the total number of announcements posted.
- **`getAnnouncement(uint256 index)`** - Retrieves a specific announcement by index. Returns the poster's address, message, and timestamp.

## Deployment

1. Clone this repository:

   ```bash
   git clone https://github.com/your-username/public-announcement-board.git
