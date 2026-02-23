// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract structure {
    struct Person {
        string name;
        uint pincode;
        uint age;
    }

    Person public p1 = Person("Shaan", 35, 21);

    function getPerson() public view returns(string memory) {
        return (p1.name);
    }

    function getDetails() public view returns (string memory, uint, uint) {
        return (p1.name, p1.pincode, p1.age);
    }

    function setName() public {
        p1.name = "Som";
    }
}