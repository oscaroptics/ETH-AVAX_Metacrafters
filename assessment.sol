// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract AssertionContract {
    uint public value;

    function setValue(uint newValue) public {
       
        require(newValue > 0);
        
       
        assert(newValue != 42);
        
       
        if (newValue == 999) {
            revert("Invalid value");
        }
        
        value = newValue;
    }
}
