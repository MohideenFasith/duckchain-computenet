async function main() {
  const ComputeNet = await ethers.getContractFactory("ComputeNet");
  const computeNet = await ComputeNet.deploy();
  await computeNet.deployed();
  console.log("ComputeNet deployed to:", computeNet.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
