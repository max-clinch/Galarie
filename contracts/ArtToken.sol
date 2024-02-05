// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract ArtToken is ERC721Enumerable {
  address public marketplace;
  uint256 private nextTokenId = 1; // Starting from 1 to ensure non-zero token IDs

  struct Item {
    address creator;
    string uri; //metadata url
  }

  mapping(uint256 => Item) public items; //id => Item

  constructor() ERC721("ArtToken", "ARTK") {}

  function mint(string memory uri) public returns (uint256) {
    uint256 newItemId = nextTokenId;
    _safeMint(msg.sender, newItemId);
    approve(marketplace, newItemId);

    items[newItemId] = Item({
      creator: msg.sender,
      uri: uri
    });

    nextTokenId++;

    return newItemId;
  }

  function tokenURI(uint256 tokenId) public view override returns (string memory) {
    require(_exists(tokenId), "ERC721URIStorage: URI query for nonexistent token");
    return items[tokenId].uri;
  }

  function setMarketplace(address market) public {
    //require(msg.sender ==);
    marketplace = market;
  }
}
// npx hardhat flatten contracts/ArtToken.sol > ArtTokenFlatten.sol

