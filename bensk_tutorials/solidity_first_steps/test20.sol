//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract test20{
    uint nombre;

    uint private _privateNombre;

    function _setNombre (uint _nombre) internal {
        nombre = _nombre;
    }

    function getNombre () public view returns (uint){
        return nombre;
    }

    function double(uint _nombre) public pure returns (uint){
        return _nombre * 2;
    }

    function getPrivateNombre () external view returns(uint){
        return _privateNombre;
    }
}

contract test21 is test20{

}