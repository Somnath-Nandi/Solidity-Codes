// SAFE: Users pull their own ETH out
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//create a balance mapping

contract smth {
    address public owner;
    mapping(address => uint256) public pendingW;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    function assignPrize(address winner) public payable onlyOwner {
        pendingW[winner] += msg.value;
    }

    function withdraw() public {
        uint256 amt = pendingW[msg.sender];
        require(amt > 0, "notihing");
        pendingW[msg.sender] = 0;
        (bool success, ) = payable(msg.sender).call{value: amt}("");
        require(success, "ok");
    }
}