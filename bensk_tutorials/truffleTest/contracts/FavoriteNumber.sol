// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract FavoriteNumber {
  
  uint favoriteNumber;

  function getFavoriteNumber() external view returns (uint) {
    return favoriteNumber;
  }

  function setFavoriteNumber(uint _favoriteNumber) external {
    favoriteNumber = _favoriteNumber;
  }

}
