// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Logger.sol";

contract Proxy {
    address public lastCaller;  // slot 0

    function forward(address logger) external {
        // msg.sender inside logCaller will be the ORIGINAL caller,
        // not the Proxy — delegatecall preserves it
        logger.delegatecall(
            abi.encodeWithSelector(Logger.logCaller.selector)
        );
    }
}