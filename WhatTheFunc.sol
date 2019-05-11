pragma solidity^0.4.0;


contract WhatTheFunc {
    
    // state variables
    string private word;
    uint private number;
    
    address owner;
    
    //constructor
    function WhatTheFunc () {
        word = "Bird";
        number = 999;
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        if (msg.sender != owner) {
            throw;
        }
        _;
    }
    
    // getter
    function getWord () constant public returns (string) {
        return word;
    }
    
    // setter
    function setWord (string w) public {
        word = w;
    }
    
}