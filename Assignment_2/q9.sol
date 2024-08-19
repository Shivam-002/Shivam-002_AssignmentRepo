// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract SimpleLedger {
    struct Entry {
        address sender;
        address receiver;
        uint256 amount;
        uint256 timestamp;
    }

    mapping(uint256 => Entry) public ledger;
    uint256 public nextEntryId;

    function addEntry(address receiver, uint256 amount) public {
        ledger[nextEntryId] = Entry({
            sender: msg.sender,
            receiver: receiver,
            amount: amount,
            timestamp: block.timestamp
        });
        nextEntryId++;
    }

    function getEntry(
        uint256 entryId
    )
        public
        view
        returns (
            address sender,
            address receiver,
            uint256 amount,
            uint256 timestamp
        )
    {
        Entry memory entry = ledger[entryId];
        return (entry.sender, entry.receiver, entry.amount, entry.timestamp);
    }
}
