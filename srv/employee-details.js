const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {

    const { EmployeeDetails } = this.entities;

    this.after('READ', EmployeeDetails, (data) => {
        const emp = Array.isArray(data) ? data : [data];

        emp.forEach((emp_details) => {

            // Set criticality based on YearOfExperience
            if (emp_details.YearOfExperience >= 3) {
                emp_details.criticality = 1;
            } else if (emp_details.YearOfExperience >= 2) {
                emp_details.criticality = 2;
            } else {
                emp_details.criticality = 3;
            }

            // Set PrioCriticality based on prio_code
            switch (emp_details.prio_code) {
                case 'H':
                    emp_details.PrioCriticality = 3;
                    break;
                case 'M':
                    emp_details.PrioCriticality = 2;
                    break;
                case 'L':
                    emp_details.PrioCriticality = 1;
                    break;
                default:
                    emp_details.PrioCriticality = 0; 
                    break;
            }

            // Increment salary based on condition
            if (emp_details.salary >= 40000) {
                emp_details.Increment = 2000; // Increment by 2000
                emp_details.TotalSalary = parseInt(emp_details.salary)+parseInt(emp_details.Increment);// Calculate the total Salary
            } else {
                emp_details.Increment = 1000; // Increment by 1000
                emp_details.TotalSalary = parseInt(emp_details.salary)+parseInt(emp_details.Increment);// Calculate the total Salary
            }
        });
    });

});
