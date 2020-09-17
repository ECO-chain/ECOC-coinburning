pragma solidity 0.4.26;

/* Smart contract to lock ECOC forever 
 * there is a payable fallback function only
 * don't send ECOC here, you will loose it forever
 */
 
contract lockForever {
    function () external payable {
        /* do nothing ...*/
    }

}