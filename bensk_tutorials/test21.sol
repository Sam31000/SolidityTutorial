//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract Events {

    uint[] numbers;
    event numberAdded(address _by, uint _number);

    function addNumber(uint _number) external {
        numbers.push(_number);
        emit numberAdded(msg.sender, _number);

    }

}
