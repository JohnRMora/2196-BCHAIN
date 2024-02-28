// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Event {
    event ValueSet(address indexed sender, uint newValue);

    function setValue(uint newValue) public {
        emit ValueSet(msg.sender, newValue);
    }
}
