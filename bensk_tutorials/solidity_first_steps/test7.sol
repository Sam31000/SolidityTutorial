//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract Exercice {

    struct student {
        string lastname;
        string firstname;
        uint[] grades;
    }

    mapping (address => student) Students;

    function addGrade(address _student, uint _grade) public {
        Students[_student].grades.push(_grade);
    }

    function getStudentGrades(address _student) public view returns (uint[] memory){
        return Students[_student].grades;
    }

    function setLastname (address _student, string memory _lastname) public {
        Students[_student].lastname = _lastname;
    }

    function getLastName (address _student) public view returns(string memory) {
        return Students[_student].lastname;
    }
}