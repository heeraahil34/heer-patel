// SPDX-License-Identifier:MIT
pragma solidity  ^0.8.0;

contract customerReceipt {
    event Payment(
        address indexed contact,
        uint indexed id,
        uint cheque
    );

    function deposit(uint id) public  payable {
       
        emit Payment(msg.sender, id, msg.value);
    }
}