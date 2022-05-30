const Average = artifacts.require("Average");

contract("Average", () => {
    let instance = null;

    before( async () => {
        instance = await Average.deployed()
    });

    it("should have an address", async () => {
        const adr = await instance.address;
        assert(adr != 0);
    });

    it("should return error if one of the input is less than 0", async () => {
        try {
            await instance.average(1, 2, -3);
        } catch(e) {
            // assert.equal(e.message, "value of input parameter has t be greater than 0", e.message)
            assert(true);
        }
        assert(false);
    });

    it("should return 2 if input is 1, 2, 3", async () => {
        const average = await instance.average(1,2,3);
        assert.equal(2, average.toNumber(), `${average.toNumber()} || 2`);
    });

    it("should return 2 if input is 1, 2, 4", async () => {
        const average = await instance.average(1,2,4);
        assert.equal(2, average.toNumber(), `${average.toNumber()} || 2`);
    });
});