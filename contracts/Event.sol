// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Event {
	// define a new event called Log
	event Log(address indexed sender, string message);
	// Define a new function called test
	// which emits two Log events
	function test() public {
		emit Log(msg.sender, "Hello World!");
	}
	// define a new function called emitLog
	// which emits a new Log event with a user entered message
	function emitLog(string memory message) public {
		emit Log(msg.sender, message);
		emit Log(msg.sender, "Im learning Solidity!");
	}
}