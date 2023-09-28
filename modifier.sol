// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OwnedContract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Modifier to check if the caller is the owner of the contract
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _; // Continue executing the function if the check passes
    }

    // Function restricted to the contract owner
    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }

    // Example function that can be called by anyone
    function doSomething() public pure returns (string memory) {
        return "Something was done.";
    }
}
