// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Q6 {

    enum Stage { Start, Middle, End }

    Stage public stage;

    function nextStage() public {
        require(uint(stage) < 2, "Already in end stage!");
        stage = Stage(uint(stage) + 1);
    }
}