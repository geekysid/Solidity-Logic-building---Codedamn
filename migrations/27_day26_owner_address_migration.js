const OwnerAddress = artifacts.require("OwnerAddress");

module.exports = function (deployer) {
  deployer.deploy(OwnerAddress);
};
