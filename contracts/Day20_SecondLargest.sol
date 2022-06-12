// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    contract SecondLargest {
        function secondMax(int[] memory array, uint arrayLength) public pure returns (int) {
            int largest;
            int secondLargest;

            for (uint i; i<arrayLength; i++) {
                if (array[i] > largest){
                    secondLargest = largest;
                    largest  = array[i];
                } else if (array[i] > secondLargest && array[i] < largest) {
                    secondLargest = array[i];
                }
            }
            return secondLargest;
        }
    }
