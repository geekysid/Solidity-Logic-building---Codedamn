const Average = artifacts.require("Average");

module.exports = function (deployer) {
  deployer.deploy(Average);
};
