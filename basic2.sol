//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract counter1{
    uint counter;

    function getcount() public view returns(uint){
        return counter;
    }
    function counter1more() public{
        counter++;
    }
}