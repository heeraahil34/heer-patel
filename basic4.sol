//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract student_mark{
    mapping(string=> uint)
    public mark;

    function setmark(string memory _name,  uint _mark)
    public{
         mark[_name] = _mark;
    }

}