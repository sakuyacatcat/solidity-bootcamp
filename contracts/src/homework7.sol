// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

interface IERC20 {
    function transfer(address target, uint256 amount) external returns (bool);
}

contract Homework7 {
    event transferOccurred(address _target, uint256 _amount);

    function query(uint256 _amount, address _target, address _token) external {
        IERC20 token = IERC20(_token);
        bool result = token.transfer(_target, _amount);
        require(result, "Transfer failed");
    }

    function checkCall(bytes calldata data) external {
        bytes4 expectedSelector = bytes4(keccak256("transfer(address,uint256)"));

        bytes4 actualSelector;
        assembly {
            actualSelector := calldataload(data.offset)
        }

        require(actualSelector == expectedSelector, "Invalid function selector");

        (address target, uint256 amount) = abi.decode(data[4:], (address, uint256));
        emit transferOccurred(target, amount);
    }
}
