// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract LogicV1 {
    uint256 private number;

    function store(uint256 _num) public {
        number = _num;
    }

    function retrieve() public view returns (uint256) {
        return number;
    }
}
