// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Voting {
    address public owner; // Address of the contract owner

    struct Candidate {
        uint256 id; // Unique identifier for the candidate
        string name; // Name of the candidate
        uint256 voteCount; // Number of votes received by the candidate
    }

    mapping(uint256 => Candidate) public candidates; // Mapping to store candidate details
    mapping(address => bool) public voters; // Mapping to track whether an address has voted
    uint256 public numCandidates; // Variable to store the number of candidates

    modifier onlyOwner() {
        require(msg.sender == owner, "Only contract owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender; // Initialize the contract owner
    }

    // Function to add a new candidate to the election
    function addCandidate(uint256 _id, string memory _name) public onlyOwner {
        candidates[_id] = Candidate(_id, _name, 0);
        numCandidates++; // Increment the number of candidates
    }

    // Function to allow a user to vote for a candidate
    function vote(uint256 _candidateId) public returns (uint256, string memory, uint256) {
        require(!voters[msg.sender], "You have already voted.");
        require(candidates[_candidateId].id != 0, "Candidate with this ID does not exist."); // Check if candidate ID exists
        
        candidates[_candidateId].voteCount++; // Increment the vote count for the candidate
        voters[msg.sender] = true; // Mark the sender's address as voted
        
        // Return details of the candidate after the vote is cast
        return getCandidate(_candidateId);
    }

    // Function to get details of a specific candidate
    function getCandidate(uint256 _candidateId) public view returns (uint256, string memory, uint256) {
        require(candidates[_candidateId].id != 0, "Invalid candidate ID.");
        Candidate memory candidate = candidates[_candidateId];
        return (candidate.id, candidate.name, candidate.voteCount);
    }

    // Function to retrieve details of all candidates
    function getAllCandidates() public view returns (Candidate[] memory) {
        Candidate[] memory allCandidates = new Candidate[](numCandidates);
        uint256 index = 0;
        for (uint256 i = 1; i <= numCandidates; i++) {
            if (candidates[i].id != 0) {
                allCandidates[index] = candidates[i];
                index++;
            }
        }
        return allCandidates;
    }

    // Function to get the total number of candidates
    function getNumCandidates() public view returns (uint256) {
        return numCandidates;
    }
}
