//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract StudentManager{

    address owner;

    struct Student {
        string lastname;
        string firstname;
        uint numberOfGrades;
        mapping (uint => Grade) grades;
    }

    struct Grade {
        string subject;
        uint grade;
    }

    mapping(address => Student) students;

    constructor (){
        owner = msg.sender;
    }

    function addStudent (address _studentAddress, string memory _firstname, string memory _lastname) public {
        require(msg.sender == owner, "Not the owner");
        bytes memory firstNameAddress = bytes(students[_studentAddress].firstname);
        require(firstNameAddress.length == 0, "Student already registered");
        students[_studentAddress].firstname = _firstname;
        students[_studentAddress].lastname = _lastname;
    }

    function addGrade (address _studentAddress, uint _grade, string memory _subject) public {
        require(msg.sender == owner, "Not the owner");
        bytes memory firstNameAddress = bytes(students[_studentAddress].firstname);
        require(firstNameAddress.length > 0, "Student doesn't exist");

        students[_studentAddress].grades[students[_studentAddress].numberOfGrades].grade = _grade;
        students[_studentAddress].grades[students[_studentAddress].numberOfGrades].subject = _subject;
        students[_studentAddress].numberOfGrades++;
    }

    function getGrades( address _studentAddress) public view returns (uint[] memory) {
        require(msg.sender == owner, "Not the owner");
        bytes memory firstNameAddress = bytes(students[_studentAddress].firstname);
        require(firstNameAddress.length > 0, "Student doesn't exist");

        uint[] memory results = new uint[] (students[_studentAddress].numberOfGrades);

        for (uint i = 0; i < students[_studentAddress].numberOfGrades; i++)
        {
            results[i] = students[_studentAddress].grades[i].grade;
        }

        return results;
    }

}