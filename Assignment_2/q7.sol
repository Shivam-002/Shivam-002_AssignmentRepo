// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Ownable {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function restrictedFunction() public view returns (string memory) {
        require(msg.sender == owner, "Not the owner");
        return "Success";
    }

    function transferOwnership(address newOwner) public {
        require(msg.sender == owner, "Not the owner");
        owner = newOwner;
    }
}
