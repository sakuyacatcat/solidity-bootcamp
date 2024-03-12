// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Homework2 {
    uint[] private numbers;

    constructor() {
        numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
    }

    function delItem(uint index) public {
        require(index < numbers.length, "Index out of range");
        for (uint i = index; i < numbers.length - 1; i++) {
            numbers[i] = numbers[i + 1];
        }
        numbers.pop();
    }

    function getNumbers() public view returns (uint[] memory) {
        return numbers;
    }
}
