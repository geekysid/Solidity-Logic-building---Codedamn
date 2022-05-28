// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.5;

/* Find the sum of digits */
/*
Task

    Create a function digitSum(int n). Where n>0.
    Return the sum of digit for n.

    For Example - If n=345 then digitSum() must return 12 i.e. 3+4+5 = 12
    If n=909 then digitSum() must return 18 i.e. 9+0+9 = 18

    Note - Function will be public.

    You can do this :)
*/

contract SumOfDigits {

    function digitSum(int n) public pure returns(int) {
        require(n>0, "input number should be greater than 0");
        int sum = 0;
        while(n > 0) {
            sum += n%10;
            n = n/10;
        }
        return sum;
    }
}