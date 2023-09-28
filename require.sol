// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GreatestNumber {
    // Function to find the greatest of two numbers
    function findGreatest(uint256 a, uint256 b) public pure returns (uint256) {
        require(a != b, "Both numbers are equal");
        
        if (a > b) {
            return a;
        } else {
            return b;
        }
    }
}
