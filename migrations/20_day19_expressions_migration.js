const Expressions = artifacts.require("Expressions");

module.exports = function (deployer) {
  deployer.deploy(Expressions);
};
