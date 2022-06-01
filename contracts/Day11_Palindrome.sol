// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract Palindrome {
    function palindrome(uint256 number) public pure returns (uint8 result) {
        uint256 newNumber = number;
        uint256 palindromeNumber = 0;

        while (newNumber > 0) {
            uint remainder = newNumber % 10;
            palindromeNumber = palindromeNumber*10 + remainder;
            newNumber = newNumber/10;
        }

        if (palindromeNumber == number) {
            result = 1;
        } else {
            result = 0;
        }
    }
}

// pragma solidity >=0.5.0 <0.9.0;

// import "hardhat/console.sol";

// contract Day5 {
//     uint256[] remainders;
//     function palindrome(uint256 number) public returns (uint) {
//         uint result;
//         uint256 newNumber = number;
//         uint256 palindromeNumber;

//         while (newNumber > 0) {
//             remainders.push(newNumber % 10);
//             newNumber = newNumber/10;
//             console.log(newNumber % 10);

//         }

//         for (uint8 i=0; i<remainders.length; i++) {
//             uint multiplier = 10**(remainders.length -(i + 1));
//             palindromeNumber += (remainders[i] * multiplier);
//             console.log(palindromeNumber);
//         }

//         if (palindromeNumber == number) {
//             result = 1;
//         } else {
//             result = 0;
//         }

//         return result;
//     }
// }
