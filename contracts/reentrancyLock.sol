// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract reentrancyLock {
    bool private locked;
    mapping(address => uint) public balances;

    modifier nonReentrant() {
    require(!locked, "Reentrant call");
    locked = true;
    _;
    locked = false;
    }

    function deposit() public payable {
        require(msg.value == msg.value, "Insufficient ETH sent");
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint amount) public nonReentrant {
        require(balances[msg.sender] >= amount);
    
        // 1. Send ETH first (calls attacker's fallback function)
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success);
    
        // 2. Update state AFTER — too late!
        balances[msg.sender] -= amount;
    }
}