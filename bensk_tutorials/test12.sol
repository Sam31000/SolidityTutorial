//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract test12 {

    uint number;
    address owner;

    constructor () {
        owner = msg.sender;
    }

    modifier isOwner() {
        require(owner == msg.sender, "Not the owner");
        _;

    }

    function setNumber(uint _number) public isOwner {
        number = _number;
    }

    function getNumber() public view isOwner returns(uint) {
        return number;
    }

}