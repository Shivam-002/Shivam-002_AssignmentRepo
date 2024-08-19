// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract SimpleStorage{
    int public myNumber;

    function setValue() public {
        myNumber=5;
    }

    function getValue() public view returns (int) {
        return myNumber;
    }
}
