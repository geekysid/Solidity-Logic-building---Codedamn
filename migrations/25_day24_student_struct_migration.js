const StudentStruct = artifacts.require("StudentStruct");

module.exports = function (deployer) {
  deployer.deploy(StudentStruct);
};
