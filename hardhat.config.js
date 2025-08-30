require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.20",
  networks: {
    hardhat: {},
    duckchain: {
      url: "http://localhost:8545", // Replace with DuckChain RPC
      accounts: ["0xYOUR_PRIVATE_KEY"]
    }
  }
};
