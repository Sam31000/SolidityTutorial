//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract test5{

    struct wallet{
        uint balance;
        uint numPayments;
    }

    mapping(address => wallet) Wallets;

    function getTotalBalance() public view returns (uint){
        return address(this).balance;
    }

    function getBalance() public view returns (uint){
        return Wallets[msg.sender].balance;
    }

    function withdrawAllMoney (address payable _to) public {
       uint _amount = Wallets[msg.sender].balance;
        _to.transfer(_amount);
        Wallets[msg.sender].balance = 0;
    }

    receive() external payable {
        Wallets[msg.sender].balance += msg.value;
        Wallets[msg.sender].numPayments += 1;
    }

}