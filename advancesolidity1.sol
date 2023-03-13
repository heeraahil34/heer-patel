// SPDX-License-Identifier:MIT
pragma solidity  ^0.8.0;
contract Element
{ 
    uint[] public number1;

    function addInArray(uint _num) public {
        number1.push(_num);
    }

    function getFullArray() public view returns (uint[] memory) {
        return number1;
    }

    function searchAndDelete(uint _num) public {
        uint index;
        uint length = number1.length - 1;
        for(uint i = 0; i<number1.length;i++){
            if(number1[i] == _num){
                index = i;
            }
        }

        number1[index] = number1[length];
        number1.pop();
    }
}