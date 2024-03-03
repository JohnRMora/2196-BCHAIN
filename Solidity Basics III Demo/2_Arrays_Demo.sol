// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract MidtermArray {
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint){
        return arr[i];
    }
    
    function getArr() public view returns (uint [] memory){
        return arr;
    }

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }
    
    function remove(uint index) public {
        delete arr[index];
    }

    function getLength() public view returns (uint){
        return myFixedSizeArr.length;
    }

    // Retrieve Array 2
    function getArr2() public view returns (uint [] memory){
        return arr2;
    }

     // Get the sum of the array
    function getSum() public view returns (uint) {
        uint sum;
        for (uint i = 0; i < arr.length; i++) {
            sum += arr[i];
        }
        return sum;
    }
}
