package travel_policy

    allow_c10_cond := {"C10": true, "reason": "Clause C10: CONDITIONAL_ALLOWANCE - YES"} if {
        input.minimumoutofficeworkduration >= 6
    }

    allow_c11_limi := {"C11": true, "reason": "Clause C11: LIMIT - YES"} if {
        input.personalcardailykilometerlimit == "200 kms"
        input.bikedailykilometerlimit == "50 kms"
        input.grouptravelminimumpeople == "3"
    }

    allow_c11_rest := {"C11": true, "reason": "Clause C11: RESTRICTION - YES"} if {
        input.personalcarmaximumdailydistance == "200 km"
        input.personalbikemaximumdailydistance == "50 km"
        input.grouptravelminimumpassengers == "3"
    }

    allow_c12_info := {"C12": true, "reason": "Clause C12: INFORMATIONAL - YES"} if {
        input.allowancetype == "Lodging & Boarding Allowance"
        input.personneltype == "SALES PERSONNEL"
    }

    allow_c13_info := {"C13": true, "reason": "Clause C13: INFORMATIONAL - YES"} if {
        input.allowancetype == "Food & Fuel"
        input.personneltype == "Local SALES PERSONNEL"
    }

    allow_c14_info := {"C14": true, "reason": "Clause C14: INFORMATIONAL - YES"} if {
        input.policyeffectivedate == "April 1st, 2014"
    }

    allow_c1_rest := {"C1": true, "reason": "Clause C1: RESTRICTION - YES"} if {
        input.policyid == "HR/Pol/02/2014"
        input.companyname == "NAGA LIMITED"
    }

    allow_c2_cond := {"C2": true, "reason": "Clause C2: CONDITIONAL_ALLOWANCE - YES"} if {
        input.relativefriendlodgingreimbursement == "25% of eligible amount"
        input.twinsharingreimbursementlimit == "125% of a Senior level employee's eligible amount"
    }

    allow_c2_limi := {"C2": true, "reason": "Clause C2: LIMIT - YES"} if {
        input.relativefriendlodgingreimbursement == "25% of eligible amount"
        input.twinsharingreimbursementcap == "125% of a Senior level employee's eligible amount"
    }

    allow_c3_limi := {"C3": true, "reason": "Clause C3: LIMIT - YES"} if {
        input.reimbursementdeterminationfactor == "employee category"
        input.reimbursementbasis == "lower of eligible amount or bill amount"
    }

    allow_c4_appr := {"C4": true, "reason": "Clause C4: APPROVAL_REQUIRED - YES"} if {
        input.approvalauthority == "Reporting Manager"
    }

    allow_c5_rest := {"C5": true, "reason": "Clause C5: RESTRICTION - YES"} if {
        input.traveladvancesettlementdeadline == "2 days"
    }

    allow_c6_cond := {"C6": true, "reason": "Clause C6: CONDITIONAL_ALLOWANCE - YES"} if {
        input.approvalauthority == "Reporting Manager"
        input.validationdepartments == "HR & Accounts"
    }

    allow_c6_rest := {"C6": true, "reason": "Clause C6: RESTRICTION - YES"} if {
        true
    }

    allow_c7_rest := {"C7": true, "reason": "Clause C7: RESTRICTION - YES"} if {
        input.reimbursementratedetails == "Annexure – 2"
        input.fieldworkallowancedetails == "Annexure – 3"
    }

    allow_c8_limi := {"C8": true, "reason": "Clause C8: LIMIT - YES"} if {
        input.reimbursementcondition == "lesser of eligible amount or bill amount"
    }

    allow_c9_info := {"C9": true, "reason": "Clause C9: INFORMATIONAL - YES"} if {
        input.metrocities == "Mumbai, Delhi, Kolkata"
        input.statecapitalhillstations == "Chennai, Hyderabad"
        input.districtheadquarters == "Coimbatore, Madurai"
    }
