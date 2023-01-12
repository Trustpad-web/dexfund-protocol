// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Dexify Protocol.

    (c) Dexify Council <council@dexify.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity 0.6.12;

import "../release/infrastructure/price-feeds/derivatives/feeds/utils/PeggedDerivativesPriceFeedBase.sol";

/// @title TestSingleUnderlyingDerivativeRegistry Contract
/// @author Dexify Council <security@dexify.finance>
/// @notice A test implementation of PeggedDerivativesPriceFeedBase
contract TestPeggedDerivativesPriceFeed is PeggedDerivativesPriceFeedBase {
    constructor(address _dispatcher) public PeggedDerivativesPriceFeedBase(_dispatcher) {}
}
