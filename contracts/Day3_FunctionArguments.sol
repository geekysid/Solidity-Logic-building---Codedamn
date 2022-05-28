// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

/* Pass an argument to function */
/*
Task
    1)Create a state variable of uint type (need not to be public).
    2)Create a set ( ) and with one argument. And set the value of the created state variable with the value passed as an argument to the set ( ).
    3)Then create another function get ( ) which returns the value of the state variable.

    You can do this :-)
*/

contract FunctionArgument{
    uint stateVariable;

    function set(uint _stateVariable) public {
        stateVariable = _stateVariable;
    }

    function get() view public returns (uint) {
        return stateVariable;
    }
}
