// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PublicAnnouncementBoard {
    // A structure to hold the announcements
    struct Announcement {
        address poster;
        string message;
        uint256 timestamp;
    }

    // Array to store all announcements
    Announcement[] public announcements;

    // Event to notify when a new announcement is posted
    event NewAnnouncement(address indexed poster, string message, uint256 timestamp);

    // Function to post a new announcement
    function postAnnouncement(string memory message) public {
        // Create the new announcement
        Announcement memory newAnnouncement = Announcement({
            poster: msg.sender,
            message: message,
            timestamp: block.timestamp
        });

        // Store the announcement on-chain
        announcements.push(newAnnouncement);

        // Emit an event
        emit NewAnnouncement(msg.sender, message, block.timestamp);
    }

    // Function to get the total number of announcements
    function getAnnouncementsCount() public view returns (uint256) {
        return announcements.length;
    }

    // Function to get an announcement by index
    function getAnnouncement(uint256 index) public view returns (address, string memory, uint256) {
        require(index < announcements.length, "Announcement does not exist");
        Announcement memory ann = announcements[index];
        return (ann.poster, ann.message, ann.timestamp);
    }
}
