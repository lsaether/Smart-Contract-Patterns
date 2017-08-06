pragma solidity ^0.4.13;

contract CallControlled {
    
    address public controller;
    bool public called = false;
    
    function CallControlled() {
        controller = msg.sender;
    }
    
    
    function func()
        onlyController
    {
        called = true;
    }
    
    modifier onlyController() 
    {
        require(msg.sender == controller);
        _;
    }
    
}