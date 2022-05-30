const HelloSolidity = artifacts.require('HelloSolidity');

contract("HelloSolidity", (accounts) => {
    let instance = null;

    before(async () => {
        instance = await HelloSolidity.deployed();
    });

    describe("Testing Contract Address", () => {
        it("Should have deployed address", async () => {
            const adr = await instance.address;
            assert(adr != 0);
        });

        it("should have default value of Hello Solidity", async () => {
            const message = await instance.str();
            assert.equal(message, "Hello Solidity", `Expected value: 'Hello Solidity' || Actual Value: '${message}'`)
        });
    });
});