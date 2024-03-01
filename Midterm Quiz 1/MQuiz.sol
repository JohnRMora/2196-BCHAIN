// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract MQuizContract {
    address public owner;
    uint256 public age;
    uint256 public hoursWorked;
    uint256 public rate;
    uint256 public totalSalary;
    
    modifier OnlyOwner() {
        require(msg.sender == owner, "Not the Owner");
        _;
    }

    modifier noZeroValue(uint _value) {
        require(_value > 0, "Hours Worked/Hourly rate must not be 0");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setAge(uint _age) public {
        age = _age;
    }

    function setHrsWrk(uint _hoursWorked) public noZeroValue(_hoursWorked) {
        hoursWorked = _hoursWorked;
    }

    function setRate(uint _rate) public OnlyOwner noZeroValue(_rate) {
        rate = _rate;
    }

    function calculateTotSal() public OnlyOwner noZeroValue(rate) noZeroValue(hoursWorked){
        totalSalary = hoursWorked * rate;
    }
}