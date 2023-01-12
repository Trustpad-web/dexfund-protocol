// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Dexify Protocol.

    (c) Dexify Council <council@dexify.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

/// @title FeeManager Interface
/// @author Dexify Council <security@dexify.finance>
/// @notice Interface for the FeeManager
interface IFeeManager {
    // No fees for the current release are implemented post-redeemShares
    enum FeeHook {
        Continuous,
        BuySharesSetup,
        PreBuyShares,
        PostBuyShares,
        BuySharesCompleted,
        PreRedeemShares
    }
    enum SettlementType {
        None,
        Direct,
        Mint,
        Burn,
        MintSharesOutstanding,
        BurnSharesOutstanding
    }

    function invokeHook(
        FeeHook,
        bytes calldata,
        uint256
    ) external;
}
