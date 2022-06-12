// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HCF {
    function hcf(uint num1, uint num2) public pure returns (uint) {
        uint smaller;
        if (num1 > num2) {
            smaller = num2;
        } else {
            smaller = num1;
        }

        for (uint i=smaller; i>0; i--) {
            if (num1 % i == 0 && num2 % i == 0) {
                return i;
            }
        }

        return 1;
    }
}
