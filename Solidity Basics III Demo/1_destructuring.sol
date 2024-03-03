// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Destructuring {
    function multiOutput() public pure returns (uint, bool) {
        return (2, true);
    }

    function namedOutput() public pure returns (uint a, bool b) {
        return (1, true);
    }

    function varAssigned() public pure returns (uint a, bool b) {
        a = 1;
        b = true;
    }

    function destructAssigned() public {
        (uint a, bool b) = multiOutput();
        (, b) = multiOutput();
        emit LogValues(a, b);
    }
    
    // Destructuring to add and multiply input values
    function doubleInput(uint a, uint b) public pure returns (uint, uint) {  
        (uint sum, uint product) = (a + b, a * b);
        return (sum, product);
    }
    
     // Destructuring to swap input values and multiply
    function swapAndMultiply(uint a, uint b) public pure returns (uint, uint) {
        (uint x, uint y) = (b, a);
        return (x, x * y);
    }

    event LogValues(uint a, bool _b);
}
