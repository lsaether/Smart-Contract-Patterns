pragma solidity ^0.4.13;

import './CallControlled.sol';

contract Caller {
    
    address callControlled;
    
    function Caller() {
        CallControlled contract = new CallControlled();
        callControlled = contract;
    }
    
    function call() 
    {
        assert(callControlled.call(bytes4(keccak256("func()"))));
    }
    
}