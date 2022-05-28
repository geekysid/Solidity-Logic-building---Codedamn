const NthTermFinder = artifacts.require("NthTermFinder");

module.exports = function (deployer) {
  deployer.deploy(NthTermFinder);
};
