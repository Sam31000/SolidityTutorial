//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract test4 {

    struct balance {
        uint money;
        uint numPayments;
    }

    mapping (address => balance) Balances;

    receive() external payable {
        Balances[msg.sender].money += msg.value;
        Balances[msg.sender].numPayments += 1;
    }

    function getBalance(address _myAddress) public view returns (uint){
        return Balances[_myAddress].money;
    }

    function getNumPayment(address _myAddress) public view returns (uint){
        return Balances[_myAddress].numPayments;
    }

}