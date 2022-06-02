// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract ArrayReversal {
    function arrayReversal(uint[] memory arr) public pure returns (uint[] memory ){
        uint[] memory reversedArray = new uint[](arr.length);
        for (uint i=0; i<arr.length; i++) {
            reversedArray[i] = arr[arr.length-i-1];
        }
        return reversedArray;
    }

    function reverseArray(uint[] memory arr) public pure returns (uint[] memory ){
        uint temp;
        for (uint i=0; i<arr.length; i++) {
            temp = arr[i];
            arr[i] = arr[arr.length-i-1];
            arr[arr.length-i-1] = temp;
        }
        return arr;
    }
}