// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract TypeConversion {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function convertToPayable(address _addr) public pure returns (address payable) {
        return payable(_addr);
    }
}