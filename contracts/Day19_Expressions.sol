// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Expressions {
    function expression(uint x, uint n) public pure returns (uint) {
        uint sum = 0;
        for( uint i=0; i<=n; i++) {
            sum += x**i;

        }
        return sum;
    }
}
