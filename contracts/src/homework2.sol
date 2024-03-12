// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Homework2 {
    uint8[] public array;

    function remove(uint8 index) public {
        require(index < array.length, "Index out of bounds");
        require(array.length > 0, "Array is empty");
        array[index] = array[array.length - 1];
        array.pop();
    }
}
