// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract StudentData {

    struct Student {
        string name;
        uint marks;
    }
    
    Student[] public students;

    function addStudent(string memory _name, uint _marks) public {
        Student memory s1;
        s1.name = _name;
        s1.marks = _marks;
        students.push(s1);
    }

    function getAllStudents() public view returns (Student[] memory) {
	    return students;
	}
}