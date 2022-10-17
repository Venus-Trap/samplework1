// I'm a comment!
// SPDX-License-Identifier: MIT

// pragma solidity ^0.8.0;
pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    //Using A map
    mapping(uint => Person) public people;
    address[] public peopleAccnts;

    struct Person {
        string firstName;
        string lastName;
        string email;
        string phone;
    }

    function setPerson() public {
        people[1] = Person({
            firstName: "Adam",
            lastName: "Seed",
            email: "adamseed@mymail.com",
            phone: "083674829834"
        });
        people[2] = Person({
            firstName: "Peter",
            lastName: "Man",
            email: "peterman@mymail.com",
            phone: "087459495849"
        });
        people[2] = Person({
            firstName: "John",
            lastName: "Gate",
            email: "johngate@mymail.com",
            phone: "084845708947"
        });
        people[2] = Person({
            firstName: "James",
            lastName: "Todd",
            email: "jamestodd@mymail.com",
            phone: "08784409099"
        });
    }

    function getPerson(uint id)
        public
        view
        returns (
            string memory,
            string memory,
            string memory,
            string memory
        )
    {
        return (
            people[id].firstName,
            people[id].lastName,
            people[id].email,
            people[id].phone
        );
    }
}
