// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract EvenArray {
    function even(uint[] memory arr) public pure returns(uint[] memory) {
        uint[] memory evenArray = new uint[](arr.length);
        for (uint i=0; i<arr.length; i++){
            evenArray[i] = arr[i]*2;
        }
        return evenArray;
    }
}