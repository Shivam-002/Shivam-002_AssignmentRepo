// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract MessageStorage {
    string private message;

    function setMessage(string calldata newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}
