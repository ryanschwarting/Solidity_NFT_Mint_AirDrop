//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC721/ERC721Full.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ArtToken is ERC721Enumerable {
    //using Strings for uint256;

    //string public baseURI;

    constructor() public ERC721 ("ArtToken", "ART") {

    }

    function registerArtwork(address to_, string memory _tokenId) public returns (uint256) {

        uint256 tokenId = totalSupply();
        _safeMint(to_, tokenId);
        _setTokenURI(tokenId, _tokenURI);
        return tokenId;
    }
    //function setBaseURI(string memory _newBaseURI) public onlyOwner {
       // baseURI = _newBaseURI;
    //}
}
