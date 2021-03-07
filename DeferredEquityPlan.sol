pragma solidity ^0.5.5;

contract DeferredEquityPlan {
    address HR;

    address payable employee;
    bool employed=true;

    uint total_shares=1000;
    uint annual_distribution=250;
    
    uint start_time=now;
    uint unlock_time=now+365 days;
    
    uint public distributed_shares;

    constructor(address payable _employee) public {
        HR=msg.sender;
        employee=_employee;
    }

    function distribute() public {
        require(msg.sender==HR || msg.sender==employee, "You are not party to this Contract!");
        require(unlock_time<=now, "Shares have not vested yet!");
        require(distributed_shares<total_shares, "All shares have been distributed.");
        require(employed==true, "Contract is no longer active.");

        unlock_time+=365 days; 
        distributed_shares=(now-start_time)/365 days * annual_distribution;

        if (distributed_shares>1000) {
            distributed_shares=1000;
        }
    }

    function deactivate() public {
        require(msg.sender==HR || msg.sender==employee, "You are not authorized to deactivate this Contract.");
        employed=false;
    }

    function() external payable {}
}