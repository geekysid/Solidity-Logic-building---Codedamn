const {BN} = require('@openzeppelin/test-helpers');
const Function = artifacts.require("Function");

contract("Function", () => {
    let instance = null;
    before( async () => {
        instance = await Function.deployed();
    });

    describe("Testing functions", () => {
        it("should return 10", async () => {
            const expectedactualValue = 10;
            const actualValue = await instance.returnStateVariable();
            assert.equal(expectedactualValue, actualValue.toNumber(), `${expectedactualValue} ||  ${actualValue.toNumber()}`);
        });

        it("should return 20", async () => {
            const expectedactualValue = 20;
            const actualValue = await instance.returnLocalVariable();
            assert.equal(expectedactualValue, actualValue.toNumber(), `${expectedactualValue} ||  ${actualValue.toNumber()}`);
        });
    });
});