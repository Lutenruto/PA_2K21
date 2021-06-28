// SPDX-License-Identifier: GNU3
pragma solidity >=0.4.22 <=0.8.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract IBidCNFT is ERC721URIStorage  {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Bid", "BID") {}

    function createBid(address player, string memory tokenJSON) public returns (uint256){
        _tokenIds.increment();
        uint256 bidId = _tokenIds.current();
        _mint(player, bidId);
        _setTokenURI(bidId, tokenJSON);

        return bidId;
    }

    function exists(uint256 nftId) public view returns (bool) {
        return _exists(nftId);
    }
}