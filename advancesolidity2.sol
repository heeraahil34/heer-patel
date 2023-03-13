// SPDX-License-Identifier:MIT
pragma solidity  ^0.8.0;

contract shopkeeperandclient{
    address shopkeeper;
    string _shokeeper;
    uint payment = 0;
   

     

    constructor(){
    shopkeeper = msg.sender;
    }

     modifier Onlyshopkeeper(){
        require(msg.sender == shopkeeper, "You are not valid shopkeeper");
        require(payment == 0, "Please want till the transction is completed");
        payment = 1;
        _;
        payment = 0;
    }

    function setQuote(string memory a) Onlyshopkeeper public{
        _shokeeper = a;
    }

    function getQuote() public view returns (string memory){
        return _shokeeper;
    }
}