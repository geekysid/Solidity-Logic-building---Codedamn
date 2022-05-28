// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.5;

/* Find nth Term */
/*
Task
    There is a series, S , where the next term is the sum of pervious three terms. Given the first three terms of the series, a ,b ,c and respectively,
    you have to output the nth term of the series using recursion.
    S(n) = a for n=1
    S(n) = b for n=2
    S(n) = c for n=3
    S(n) = S(n-1) + S(n-2) + S(n-3) for n>3
    Create a function nthTerm(uint n, uint a, uint b, uint c) where n is the nth term to find and a,b,c are the three terms of the series.

    For Example - If n=5 a=1 b=2 c=3 then nthTerm() must return 11 as S(1) = 1 S(2) = 2
    S(3) = 3 S(4) = S(3) + S(2) + S(1) = 1+2+3 = 6 S(5) = S(4) + S(3) + S(2) = 6 + 3 + 2 = 11

    Note - Function will be public.

    You can do this :)
*/

contract NthTermFinder  {
    function nthTerm(uint n, uint a, uint b, uint c)  pure public returns (uint term){
        require(n>3, "n should be greater tahn 3");
        for( uint i=4; i<=n; i++) {
            term = a+b+c;
            a = b;
            b = c;
            c = term;
        }
    }
}