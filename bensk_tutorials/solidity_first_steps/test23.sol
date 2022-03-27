//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract NumberFactory {

    Number[] numbers;

    function createNumberContract() external returns (address){
        Number n = new Number(100);
        numbers.push(n);
        return address(n);
    }

    function getNumberByContract (Number _contract) external view returns (uint) {
       return _contract.getNumber();
    }

    function setNumberByContract (Number _contract, uint _number) external {
        _contract.setNumber(_number);
    }

}

contract Number {
    uint number;

    constructor (uint _number){
        number = _number;
    }

    function getNumber() external view returns (uint) {
        return number;
    }

    function setNumber(uint _number) external {
        number = _number;
    }
}