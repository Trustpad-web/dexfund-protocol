import { ethers, deployments } from 'hardhat';
import { ParaSwapV5Adapter__factory } from '../typechain-types';


async function main() {
  let [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with the account: " + deployer.address);

  const integrationManagerAddress = "0x2B3189e520608b6BBf7666442eF52B185EefcD5c";

  const paraswapV5Adapter = await (new ParaSwapV5Adapter__factory(deployer)).deploy(
    integrationManagerAddress,
    "0xDEF171Fe48CF0115B1d80b88dc8eAB59176FEe57",
    "0x216B4B4Ba9F3e719726886d34a177484278Bfcae"
  );
  
  console.log(
    `Deployed ParaswapV5Adapter to: ${paraswapV5Adapter.address}`
  );
  console.log(
    `\nVerify:\nnpx hardhat verify --network bscmainnet ${paraswapV5Adapter.address} ${integrationManagerAddress} 0xDEF171Fe48CF0115B1d80b88dc8eAB59176FEe57 0x216B4B4Ba9F3e719726886d34a177484278Bfcae`
  );
}

main()
  .then(() => process.exit())
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

  "0xda8b4731A2524Ee42416C2F66b1B8Bd2F1864e71"