// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract LogicV2 {
    uint256 private number;

    function store(uint256 _num) public {
        number = _num * 2; // upgraded logic: multiply input by 2
    }

    function retrieve() public view returns (uint256) {
        return number;
    }

    function reset() public {
        number = 0;
    }
}
