// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract ReverseDigit {
    function reverseDigit(uint number) public pure returns (uint revered) {
        uint newNumber = number;

        while(newNumber > 0) {
            uint remainder = newNumber%10;
            revered = (revered*10) + remainder;
            newNumber /= 10;
        }
    }
}