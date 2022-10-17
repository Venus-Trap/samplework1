//Imports
const { ethers, run, network } = require("hardhat");

//Async Function
async function main() {
  const SimpleStorageFactory = await ethers.getContractFactory("SimpleStorage");
  console.log("Deploying contract....");
  const simpleStorage = await SimpleStorageFactory.deploy();
  await simpleStorage.deployed();
  console.log(`Deploying contract to ${simpleStorage.address}`);

  const people = await simpleStorage.setPerson();
  console.log(`These are the people availabe: ${people}`);

  //Updated Current Value

  const person = await simpleStorage.getPerson(2);
  console.log(`This is the person you searched for: ${person}`);
}

//main
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
