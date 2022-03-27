pragma solidity 0.8.13;

contract test2 {
    uint nombre;
    bool myBool;
    address myAddress;
    string myString;

    function getString() public view returns (string memory){
        return myString;
    }

    function setString(string memory str) public {
        myString = str;
    }

    function getNombre() public view returns (uint){
        return nombre;
    }

    function setNombre(uint _nombre) public {
        nombre = _nombre;
    }

    function getBool () public view returns (bool){
        return myBool;
    }

    function setBool(bool _bool) public{
        myBool = _bool;
    }

    function getAddress () public view returns (address) {
        return myAddress;
    }

    function setAddress (address _address) public {
        myAddress = _address;
    }
}
