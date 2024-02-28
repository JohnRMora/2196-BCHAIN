// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint256 public myNumber;
    mapping(address => uint256) public valueMapping;

    constructor() {
        valueMapping[msg.sender] = 100;
        myNumber = 50;
    }
    
    // Function to update myNumber
    function updateValue(uint newNumber) public {
        myNumber = newNumber;
        valueMapping[msg.sender] = myNumber;
    }
}