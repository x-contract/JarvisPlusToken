pragma solidity 0.4.24;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "../node_modules/openzeppelin-solidity/contracts/ownership/Ownable.sol";

/*
 *
 *  This is the defination of Jarvis+ Token.
 *  Name = "Jarvis+ Token"
 *  Symbol = "JAR"
 *  Decimals = 18
 *
 */

contract JarvisPlusToken is StandardToken, Ownable {

    string public constant name = "Jarvis+ Token";
    string public constant symbol = "JAR";
    uint8 public constant decimals = 18;

    // This is the initial amount of JAR.
    uint256 private constant initialAmount = 600000000000000000000000000;

    constructor() public {

        // totalSupply_ = initialAmount;
        // balances[owner].add(initialAmount);
        // emit Transfer(address(0), owner, initialAmount);
        owner = msg.sender;
        if(totalSupply() ==  0) {
            totalSupply_ = initialAmount;
            owner = msg.sender;
            balances[msg.sender] = initialAmount;
            emit Transfer(address(0), msg.sender, initialAmount);
        }
    }
}
