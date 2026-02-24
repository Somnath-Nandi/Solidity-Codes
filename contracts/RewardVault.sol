// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RewardVault {
    mapping(address => bool) public claimed;

    // Anyone who submits the correct secret gets 1 ETH
    function claimReward(string memory secret) external {
        require(
            keccak256(abi.encodePacked(secret)) == 0xabc...123,
            "Wrong secret"
        );
        require(!claimed[msg.sender], "Already claimed");
        claimed[msg.sender] = true;
        payable(msg.sender).transfer(1 ether);
    }
}