const FunctionArgument = artifacts.require("FunctionArgument");

contract("FunctionArgument", () => {
    let instance = null;

    before( async () => {
        instance = await FunctionArgument.deployed()
    });

    it("should have an address", async () => {
        const adr = await instance.address;
        assert(adr != 0);
    });

    it("should have a default value of 0", async () => {
        const value = await instance.get();
        assert.equal(0, value.toNumber());
    });

    it("should set value to 100", async () => {
        await instance.set(100);
        const value = await instance.get();
        assert.equal(100, value.toNumber(), `${value.toNumber()} || 100`);
    });
});