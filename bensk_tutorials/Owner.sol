//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract Owner {
    address owner; 
    
    constructor () {
        owner = msg.sender;
    }

    modifier isOwner() {
        require(owner == msg.sender, "Not the owner");
        _;
    }
}