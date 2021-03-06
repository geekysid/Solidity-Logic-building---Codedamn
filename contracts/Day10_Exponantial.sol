// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.5;

/* X raised to Y */
/*
Task
    If y is a positive integer and x is any real number, then x^y corresponds to repeated multiplication x^y=x×x×⋯×x y times. We can call this “x raised to the power of y,” “x to the power of y,” or simply “x to the y.” Here, x is the base and y is the exponent or the power.
    Create a function power(uint x,uint y) . This power() will calculate x raised to the power of y and return it.

    For Example - If x=2 y=3 then power() must return 8 (2x2x2=8) If x=7 y=2 then power() must return 49 (7x7=49)
    Note - Function will be public.
    You can do this :)
*/

contract Exponantial {
    function power(uint x,uint y) pure public returns(uint result) {
        require(x>=0, "x must be positive number");
        result = x**y;
    }
}
