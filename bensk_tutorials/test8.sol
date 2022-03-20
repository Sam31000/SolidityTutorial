//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract test8{

    enum state { command, send, delivered}

    struct product {
        uint _SKU;
        test8.state _state;
    }

    mapping (address => product) CustomerCommand;

    function command (address _customer, uint _sku) public {
        product memory p = product( _sku, state.command);
        CustomerCommand[_customer] = p;
    }

    function send (address _customer) public {
        CustomerCommand[_customer]._state = state.send;
    }

    function getSKU (address _customer) public view returns (uint){
        return CustomerCommand[_customer]._SKU;
    }

    function getState(address _customer) public view returns(state) {
        return CustomerCommand[_customer]._state;
    }

}