//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import './Owner.sol';

contract test12 is Owner{

    uint number;

    function setNumber(uint _number) public isOwner {
        number = _number;
    }

    function getNumber() public view isOwner returns(uint) {
        return number;
    }
}