// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Deploy2{
    constructor(){}

    function add() pure public returns (uint256 result){
        assembly{
            result := add(0x07, 0x08)
            mstore(msize(), result)
        }
        return result;
    }
}
