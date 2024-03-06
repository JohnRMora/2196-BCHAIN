// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract  BCHAINMTE {
    address public owner;
    string public name;
    uint256 public prelimGrade;
    uint256 public midtermGrade;
    uint256 public finalGrade;
    uint8 public gradeStatus ;
    
    modifier onlyOwner(){
        require(msg.sender == owner, "Not the owner");
        _;
    }

    modifier validGrade(uint _value) {
        require(_value >= 0 && _value <= 100, "Grade must be between 0 and 100");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    event GradeCalculated(string name, uint gradeStatus);
    
    function setName (string memory _name) public {
        name = _name;
    }

    function setPrelimGrade(uint _prelimGrade) public onlyOwner validGrade(_prelimGrade){
        prelimGrade = _prelimGrade;
    }

    function setMidtermGrade(uint _midtermGrade) public onlyOwner validGrade(_midtermGrade){
        midtermGrade = _midtermGrade;
    }

    function setFinalGrade(uint _finalGrade) public onlyOwner validGrade(_finalGrade){
        finalGrade = _finalGrade;
    }

    function calculateGrade() public onlyOwner validGrade(finalGrade) validGrade(midtermGrade) validGrade(finalGrade) {
        uint256 totalGrade;
        totalGrade = (prelimGrade + midtermGrade + finalGrade) / 3;
        
        if (totalGrade < 75){
            gradeStatus = 0;
        } else if (totalGrade >= 75 && totalGrade <= 100)
        {
            gradeStatus = 1;
        }
        emit GradeCalculated(name, gradeStatus);
    }   
}

