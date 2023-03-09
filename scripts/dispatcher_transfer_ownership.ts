import { ethers } from 'hardhat';
import { Dispatcher__factory } from '../typechain-types';

async function run() {
  let [deployer] = await ethers.getSigners();
  console.log('deployer: ', await deployer.getChainId());
  const dispatchAddress = '0xaF873FcD0Fe59749360E6817b8fF658269c1FCEe';
  const dispatcher = Dispatcher__factory.connect(dispatchAddress, deployer);

  while (true) {
    try {
      const tx = await dispatcher.setNominatedOwner('0x2608F78b20385755C670195d7C3C9110E41992a2');
      await tx.wait();

      console.log('Set nominated Owner Done.');
    } catch (e) {
      console.log('Error while setting nominated Owner: ', e);
    }
  }
}

run();
