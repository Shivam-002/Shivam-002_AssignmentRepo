// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract EventLogging {
    event logging(address indexed user);

    function performAction() public {
        emit logging(msg.sender);
    }
}
