const BookArray = artifacts.require("BookArray");

module.exports = function (deployer) {
  deployer.deploy(BookArray);
};
