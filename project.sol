// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ErrorHandling {
    function square(uint value) public pure returns (uint) {
        require(value != 0, "Input must be non-zero");
        return value ** 2;
    }

    function cube(uint value) public pure returns (uint) {
        if (value == 0) {
            revert("Input must be non-zero");
        }
        return value * value * value;
    }

    uint public number = 0;

    function add() public view returns (uint) {
        assert(number >= 0);
        return number + 2;
    }
}
