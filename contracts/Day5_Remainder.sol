// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

/* Find remainder */
/*
Task

    Create a function find(int a). Where a>0.
    Return the remainder when a is divided by 3.

    Note - Function will be public.
    You can do this :)
*/


contract Remainder {

    function find(int a) pure public returns (int result) {
        require(a > 0, "value of input parameter has t be greater than 0");
        result = a % 3;
    }
}
