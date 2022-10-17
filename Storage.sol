// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


contract FarmerDataStorage {

    uint256 amount;

    struct Farmer {
        uint256 Age;
        string name;
        uint256 fieldsft;

    }

    Farmer[] public farmer;

    mapping(string => uint256) public nameToFieldArea;

    function store(uint256 _amount) public  {
        amount = _amount;
    }
    
    function retrieve() public view returns (uint256){
        return amount;
    }

    function addFarmer(string memory _name, uint256 _age, uint256 _fieldsft) public {
        farmer.push(Farmer(_age, _name,_fieldsft));
        nameToFieldArea[_name] = _fieldsft;
    }
}