// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract NameStorage{

    string public UserName;

    function setName(string memory name)public {
        UserName = name;
    }

    function getName() public view returns (string memory) {
        return UserName;
    }

}