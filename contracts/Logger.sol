// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Logger {
    address public lastCaller;  // slot 0

    function logCaller() external {
        lastCaller = msg.sender; // who called THIS contract?
    }
}