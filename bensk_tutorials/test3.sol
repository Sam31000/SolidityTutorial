//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract test3{
    mapping(address => uint) Balances;

    receive() external payable{
        Balances[msg.sender] = msg.value;
    }

    function getBalance(address myAddress) public view returns(uint){
        return Balances[myAddress];
    }
}
