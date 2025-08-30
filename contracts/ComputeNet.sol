// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ComputeNet {
    struct Job {
        address requester;
        string inputDataCID;
        uint reward;
        bool completed;
    }

    mapping(uint => Job) public jobs;
    uint public jobCount;
    mapping(address => uint) public stakes;

    event JobCreated(uint jobId, address requester, string inputDataCID, uint reward);
    event JobCompleted(uint jobId, address provider, string outputDataCID);

    function stake() external payable {
        stakes[msg.sender] += msg.value;
    }

    function createJob(string memory inputDataCID) external payable {
        require(msg.value > 0, "Reward required");
        jobCount++;
        jobs[jobCount] = Job(msg.sender, inputDataCID, msg.value, false);
        emit JobCreated(jobCount, msg.sender, inputDataCID, msg.value);
    }

    function completeJob(uint jobId, string memory outputDataCID) external {
        Job storage job = jobs[jobId];
        require(!job.completed, "Job already done");
        job.completed = true;
        payable(msg.sender).transfer(job.reward);
        emit JobCompleted(jobId, msg.sender, outputDataCID);
    }
}
