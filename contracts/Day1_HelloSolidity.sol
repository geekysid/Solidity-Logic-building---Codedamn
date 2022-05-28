// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.5;

/* Your first program in Solidity */

/*
Objective -
    In this challenge, we review some basic concepts that will get you started with this series. Y
    ou will need to use the same (or similar) syntax to read input and write output in challenges throughout Codedamn.
*/

contract HelloSolidity{
    string public message = "Hello Solidity";

    function str() public view returns (string memory) {
        return message;
    }
}