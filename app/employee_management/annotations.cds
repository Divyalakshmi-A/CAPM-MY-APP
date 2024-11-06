using EmployeeService as service from '../../srv/employee-details';
annotate service.EmployeeDetails with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : EmployeeId,
            Label : 'EmployeeId',
        },
        {
            $Type : 'UI.DataField',
            Value : Name,
            Label : 'Name',
        },
        {
            $Type : 'UI.DataField',
            Value : Qualification,
            Label : 'Qualification',
        },
        {
            $Type : 'UI.DataField',
            Value : YearOfExperience,
            Label : 'YearOfExperience',
        },
        {
            $Type : 'UI.DataField',
            Value : EmployeeStatus,
            Label : 'EmployeeStatus',
        },
        {
            $Type : 'UI.DataField',
            Value : Designation,
            Label : 'Designation',
        },
        {
            $Type : 'UI.DataField',
            Value : prio_code,
            Label : '{i18n>Priority}',
            Criticality : PrioCriticality,
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Personal Details',
            ID : 'PersonalDetails',
            Target : '@UI.FieldGroup#PersonalDetails',
        },
    ],
    UI.FieldGroup #PersonalDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : PersonalDetails.Employee_EmployeeId,
                Label : '{i18n>Employee}',
            },
            {
                $Type : 'UI.DataField',
                Value : PersonalDetails.Name,
                Label : 'Name',
            },
            {
                $Type : 'UI.DataField',
                Value : PersonalDetails.Gender,
                Label : 'Gender',
            },
            {
                $Type : 'UI.DataField',
                Value : PersonalDetails.EmailId,
                Label : 'EmailId',
            },
            {
                $Type : 'UI.DataField',
                Value : PersonalDetails.DateofBirth,
                Label : 'DateofBirth',
            },
            {
                $Type : 'UI.DataField',
                Value : PersonalDetails.Address,
                Label : 'Address',
            },
            {
                $Type : 'UI.DataField',
                Value : PersonalDetails.ContactNumber,
                Label : 'ContactNumber',
            },
            {
                $Type : 'UI.DataField',
                Value : prio_code,
                Label : '{i18n>Priority}',
                Criticality : PrioCriticality,
            },
            {
                $Type : 'UI.DataField',
                Value : YearOfExperience,
                Label : 'YearOfExperience',
            },
            {
                $Type : 'UI.DataField',
                Value : salary,
                Label : '{i18n>Salary}',
            },
            {
                $Type : 'UI.DataField',
                Value : Increment,
                Label : 'Increment',
            },
            {
                $Type : 'UI.DataField',
                Value : TotalSalary,
                Label : 'TotalSalary',
            },
        ],
    },
);

annotate service.EmployeeDetails with {
    prio @Common.Text : {
        $value : prio.descr,
        ![@UI.TextArrangement] : #TextOnly
    }
};

