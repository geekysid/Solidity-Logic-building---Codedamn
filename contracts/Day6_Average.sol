// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.5;

/* Find average */
/*
Task

    Create a function average(int a,int b,int c). Where a>0,b>0,c>0.
    Return the average of a,b and c.

    Note - Function will be public.
    You can do this :)
*/

contract Average {

    function average(int a, int b, int c) pure public returns (int result) {
        require(a>0 && b>0 && c>0, "all =inout should be greater than 0");
        result = (a+b+c)/3;
    }
}