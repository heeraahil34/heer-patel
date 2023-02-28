//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract test1{
    int number;
    string numbertype;
    function set(int n )public{
        if(n%2==0){
            numbertype="Even";
        }
        else{
            numbertype="Odd";
        }
    }
    function get() public view returns(string memory){
        return numbertype;
    }

}