// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract stringCompare {
    bytes32 a = keccak256("hello"); //keccak256 is a hashing algorithm
    bytes32 b = keccak256("hello");
    bool equal = (a == b); // direct == works!
}