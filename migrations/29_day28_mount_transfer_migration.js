const TeamPlayers = artifacts.require("TeamPlayers");

module.exports = function (deployer) {
  deployer.deploy(TeamPlayers);
};
