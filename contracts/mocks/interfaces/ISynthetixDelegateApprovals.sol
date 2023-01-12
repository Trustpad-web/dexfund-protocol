// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Dexify Protocol.

    (c) Dexify Council <council@dexify.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity 0.6.12;

/// @title ISynthetixDelegateApprovals Interface
/// @author Dexify Council <security@dexify.finance>
interface ISynthetixDelegateApprovals {
    function approveExchangeOnBehalf(address) external;

    function canExchangeFor(address, address) external view returns (bool);
}
