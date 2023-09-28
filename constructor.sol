// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    address public owner;
    uint256 public creationTime;

    // Constructor function
    constructor() {
        owner = msg.sender; // Set the contract owner to the address that deploys the contract
        creationTime = block.timestamp; // Record the timestamp of contract deployment
    }

    // Function to get the contract deployer's address
    function getDeployerAddress() public view returns (address) {
        return owner;
    }

    // Function to get the current timestamp
    function getCurrentTimestamp() public view returns (uint256) {
        return block.timestamp;
    }

    // Other functions and state variables can be defined here
}
