// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

/* Solidity Basics */

/*
Task
    Create a function evaluate(int a , int b).
    Subtract the difference of a and b from the sum of a and b.
    Return the result of the above task from the evaluate()

    Note - Function will be public.
*/

contract day4 {
    function evaluate(int a , int b) public pure returns (int result) {
        result = (a+b)-(a-b);
    }
}
