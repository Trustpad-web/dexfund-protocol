// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Dexify Protocol.

    (c) Dexify Council <council@dexify.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity 0.6.12;

/// @title IYearnVaultV2 Interface
/// @author Dexify Council <security@dexify.finance>
/// @notice Minimal interface for our interactions with Yearn Vault V2 contracts
interface IYearnVaultV2 {
    function deposit(uint256, address) external returns (uint256);

    function pricePerShare() external view returns (uint256);

    function token() external view returns (address);

    function withdraw(
        uint256,
        address,
        uint256
    ) external returns (uint256);
}
