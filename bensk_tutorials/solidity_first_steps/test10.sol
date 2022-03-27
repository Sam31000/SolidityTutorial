//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;


contract Owner {

    address owner;
    uint number;
    bool paused;

    constructor () {
        owner = msg.sender;
    }

    function setPaused (bool _paused) public {
        require(msg.sender == owner, "Not the owner");
        paused = _paused;
    }

    function setNumber (uint _number) public {
        require(msg.sender == owner, "Not the owner");
        require(!paused, "Contract is paused");
        number = _number;
    }

    function getNumber () public view returns (uint){
        require(!paused, "Contracted paused");
        return number;
    }

    function destroy (address payable _to) public {
        require(msg.sender == owner, "Not the owner");
        selfdestruct(_to);
    }
}