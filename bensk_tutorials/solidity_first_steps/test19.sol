//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import './Owner.sol';

contract test19 is Owner{

    enum typeItem {terrain, appartement, maison}

    struct item{
        uint id;
        string name;
        uint price;
        typeItem typeItem;
    }

    mapping(address => item[]) Goods;
    uint counter;


    function addGood(address _goodOwner, string memory _name, uint _price, typeItem _typeItem) public isOwner {

        require(_price > 10000, 'Must cost more than 1K');
        require(uint (_typeItem) >=0 && uint(_typeItem) <= 2, 'Wrong type item');
        
        Goods[_goodOwner].push(item(counter, _name, _price, _typeItem));
        counter++;
    }

    function getItems(address _owner) public view isOwner returns (item[] memory) {
        return Goods[_owner];
    }

    function getNumGoods(address _owner) public view isOwner returns (uint){
        return Goods[_owner].length;
    }

    function getMyGoods() public view returns (item[] memory){
        return Goods[msg.sender];
    }

}