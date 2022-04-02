const FavoriteNumber = artifacts.require("./FavoriteNumber");

contract("FavoriteNumber", accounts =>{
    it("Should change the favorite number on the blokchain", async function (){
        const Contract = await FavoriteNumber.deployed();
        const result = await Contract.setFavoriteNumber(17, {from : accounts[0]});
    })

    it("Should get the favorite number", async function (){
        const Contract = await FavoriteNumber.deployed();
        const result = await Contract.getFavoriteNumber();
        assert.equal(result.words[0], 17, "Not equal to 17");
    })



});