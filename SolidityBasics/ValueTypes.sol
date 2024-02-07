// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ValueTypes {
    bool public b = true;
    uint public u = 123;

    int public i = 123;

    int public minInt = type(int).min;

    int public maxInt = type(int).max;
    
    address public addr = 0x7d2a538d00871bc45a5740c87eE39e2122eACc1B;
    bytes32 public b32 = 0x626c756500000000000000000000000000000000000000000000000000000000;
}