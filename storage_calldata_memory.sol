// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataLocationsExample {
    // State variable stored in storage
    uint256 public stateVariable;

    constructor() {
        stateVariable = 100;
    }

    // Function that operates on storage variables
    function updateStateVariable(uint256 newValue) public {
        stateVariable = newValue;
    }

    // Function that uses memory to process data
    function processData(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result = a + b;
        return result;
    }

    // Function that takes parameters from calldata
    function getSumFromCalldata(uint256[] calldata numbers) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }

    // Function that uses memory to create and return an array
    function createMemoryArray() public pure returns (uint256[] memory) {
        uint256[] memory newArray = new uint256[](5);
        for (uint256 i = 0; i < newArray.length; i++) {
            newArray[i] = i * 2;
        }
        return newArray;
    }
}
