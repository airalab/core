//
// AIRA Builder for ACLStorage contract
//
// Ethereum address:
//  - Testnet: 
//

import 'creator/CreatorACLStorage.sol';
import './Builder.sol';

/**
 * @title BuilderACLStorage contract
 */
contract BuilderACLStorage is Builder {
    function BuilderACLStorage(uint _buildingCost, address _cashflow, address _proposal)
             Builder(_buildingCost, _cashflow, _proposal)
    {}
    
    /**
     * @dev Run script creation contract
     * @return address new contract
     */
    function create() returns (address) {
        var inst = CreatorACLStorage.create();
        Owned(inst).delegate(msg.sender);

        deal(inst);
        return inst;
    }
}
