// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract certi {
    
  address admin;
  
  constructor() {
    admin = msg.sender;    
  }
  modifier onlyAdmin {
      require(msg.sender == admin, "Insuficient privilage");
  }
  
  struct certificate {
      string courseName;
      string candidateName;
      string grade;
      string date;
  }
}