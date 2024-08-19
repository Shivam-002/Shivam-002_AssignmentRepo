// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract BasicVoting {
    int256 A = 0;
    int256 B = 0;

    function voteA() public {
        A += 1;
    }

    function voteB() public {
        B += 1;
    }

    function result() public view returns (int256, int256) {
        return (A, B);
    }
}
