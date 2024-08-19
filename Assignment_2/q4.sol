// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract SimpleCounter{
    int public count=0;
    function Counter() public view returns(int){
        return count;
    }
}