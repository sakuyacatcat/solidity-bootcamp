// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Homework3 {
    uint s;

    function solution(uint a) external {
        uint[1] memory b;
        b = [a];
        s = b[0];
    }
}
