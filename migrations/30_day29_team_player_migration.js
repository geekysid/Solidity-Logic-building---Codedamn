const AmountTransfer = artifacts.require("AmountTransfer");

module.exports = function (deployer) {
  deployer.deploy(AmountTransfer);
};
