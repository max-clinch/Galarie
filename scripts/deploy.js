const { deploy } = require("hardhat-deploy");
//
//ArtToken deployed to: 0x350792765fFE42fE4874C0191F9308A4fB7ecf47
//ArtMarketplace deployed to: 0xa93C5b64B177EFCd6Ca47E65F6B6397bB03a06db
const { ethers } = require("hardhat");

async function main() {
  const ArtToken = await ethers.getContractFactory("ArtToken");
  const artToken = await ArtToken.deploy();
  await artToken.deployed();

  console.log("ArtToken deployed to:", artToken.address);

  const ArtMarketplace = await ethers.getContractFactory("ArtMarketplace");
  const artMarketplace = await ArtMarketplace.deploy(artToken.address);
  await artMarketplace.deployed();

  console.log("ArtMarketplace deployed to:", artMarketplace.address);

  // Set the marketplace address in the ArtToken contract
  await artToken.setMarketplace(artMarketplace.address);

  console.log("Marketplace address set in ArtToken contract");

  console.log("Deployment completed!");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
});
