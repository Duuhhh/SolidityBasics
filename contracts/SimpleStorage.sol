// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    //this will be initialized to 0!
    uint256 favnumber;

    struct People {
        uint256 favnum;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameTofavnum;

    function store(uint256 _favnumber) public {
        favnumber = _favnumber;
    }

    function retrieve() public view returns (uint256) {
        return favnumber;
    }

    function addperson(string memory name, uint256 favnum) public {
        people.push(People(favnum, name));
        nameTofavnum[name] = favnum;
    }
}
