// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Greeting {
    string private greeting;

    function setGreeting() public {
        greeting = "Akshar";
    }

    function getGreeting() public view returns (string memory) {
        return greeting;
    }
}
