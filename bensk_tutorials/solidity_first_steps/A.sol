//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import './B.sol';

contract A {
    address addressB;

    function setAddressB(address _addressB) external {
        addressB = _addressB;
    }

    function callGetNumber() external view returns (uint){
        interfaceB b = interfaceB(addressB);

        return b.getNombre();
    }

    function callSetNumber (uint _number) external {
        interfaceB b = interfaceB(addressB);

        b.setNombre(_number);
    }
}