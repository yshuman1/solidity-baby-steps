pragma solidity ^0.4.11;


contract Incrementer {

    address creator;
    uint iteration;

    constructor ()  public
    {
        creator = msg.sender; 
        iteration = 0;
    }

    function increment() public 
    {
        iteration = iteration + 1;
    }
    
    function getIteration() public constant returns (uint) 
    {
        return iteration;
    }
    
    /**********
     Standard kill() function to recover funds 
    **********/
    
    function kill() public 
    { 
        if (msg.sender == creator)
            selfdestruct(creator);  // kills this contract and sends remaining funds back to creator
    }
    
}
