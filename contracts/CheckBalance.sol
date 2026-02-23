// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CheckBalance {
    constructor() payable {}
    // Accepts plain Ether transfers
    receive() external payable {
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}