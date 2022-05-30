const Remainder = artifacts.require("Remainder");

module.exports = function (deployer) {
  deployer.deploy(Remainder);
};
