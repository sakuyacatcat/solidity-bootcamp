// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19;

contract Homework6 {
    function paidETH() payable external returns (uint256) {
        assembly {
            mstore(0x80, callvalue())
            return(0x80, 0x20)
        }
    }
}
