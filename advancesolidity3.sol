//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract EmployeesDetails{
    struct EmployeeDetails{
        string name;
        uint age;
        uint salary;
    }

    mapping(uint => EmployeeDetails) _Employee;

    function setEmployeesDetails(string memory _name, uint _age, uint _salary, uint _department) public {
        _Employee[_department] = EmployeeDetails(_name,_age,_salary);
    }

    function getEmployeesDetails(uint _department) public view returns(string memory _rname, uint _rage, uint _rsalary){
        return (_Employee[_department].name, _Employee[_department].age,_Employee[_department].salary);
    }
}
