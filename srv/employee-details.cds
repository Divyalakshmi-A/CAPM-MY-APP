using {employeemanagement as EM} from '../db/schema';

@path: 'service/employee'
service EmployeeService {
    entity PersonalDetails as projection on EM.PersonalDetails;
    annotate PersonalDetails with @odata.draft.enabled;

    entity EmployeeDetails as projection on EM.EmployeeDetails;
    annotate EmployeeDetails with @odata.draft.enabled;
}