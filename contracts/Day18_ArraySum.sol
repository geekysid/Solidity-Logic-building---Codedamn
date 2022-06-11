// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArraySum {
    function sumarray(uint[] memory _array, uint _arrayLength) public pure returns (uint _sum) {
        for (uint i; i<_arrayLength; i++) {
            _sum += _array[i];
        }
    }
}
