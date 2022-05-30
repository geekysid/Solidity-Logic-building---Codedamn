const Remainder = artifacts.require("Remainder");

contract("Remainder", () => {
    let instance = null;

    before( async () => {
        instance = await Remainder.deployed()
    });

    it("should have an address", async () => {
        const adr = await instance.address;
        assert(adr != 0);
    });

    it("should return error if input is less than or equal to 0", async () => {
        try {
            await instance.find(-1);
        } catch(e) {
            // assert.equal(e.message, "value of input parameter has t be greater than 0", e.message)
            assert(true);
        }
        assert(false);
    });

    it("should return 2 if input is 5", async () => {
        const remainder = await instance.find(5);
        assert.equal(2, remainder.toNumber(), `${remainder.toNumber()} || 2`);
    });
});