//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract test6{

    uint[] nombre;

    function addValue(uint _value) public {
        nombre.push(_value);
    }

    function updateValue(uint _value, uint _index) public {
        nombre[_index] = _value;
    }

    function deleteValue(uint _index) public {
        delete nombre[_index];
    }

    function getValue(uint _index) public view returns (uint){
        return nombre[_index];
    }

    function doubleNombre() public view returns(uint[] memory){
        uint[] memory result = new uint[](nombre.length);

        for (uint i =0; i < nombre.length; i++){
            result[i] = nombre[i] * 2;
        }

        return result;
    }

}