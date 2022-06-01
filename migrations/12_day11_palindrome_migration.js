const Palindrome = artifacts.require("Palindrome");

module.exports = function (deployer) {
  deployer.deploy(Palindrome);
};
