// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract TransferZero {
    function transfer(address _to, uint256 _amount) public {
    // Reverts if the recipient is the zero address
    require(_to != address(0), "Recipient cannot be the zero address"); 
    
    // ... logic to perform the transfer
        
    }
}