const StringConcatenate = artifacts.require("StringConcatenate");

module.exports = function (deployer) {
  deployer.deploy(StringConcatenate);
};
