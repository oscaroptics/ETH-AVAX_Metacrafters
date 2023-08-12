// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {
    uint public requirevalue;
    uint public assertvalue = 1;
    address public owner;

    constructor(){
        owner=msg.sender;
    }

   function errorRequire() public {
       requirevalue++;
       require(msg.sender == owner, "you are not the owner");
   }

   function errorAssert() public{
       assertvalue=assertvalue*2;
       assert(msg.sender == owner);
   }
    function triggerRevert() public pure {
        revert("This transaction is intentionally reverted");
    }
}
