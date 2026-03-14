package travel_policy

    allow_c10_cond := {"C10": true, "reason": "Clause C10: CONDITIONAL_ALLOWANCE - YES"} if {
        input.minimumoutofficeduration >= 6
    }

    allow_c11_rest := {"C11": true, "reason": "Clause C11: RESTRICTION - YES"} if {
        true
    }

    allow_c12_info := {"C12": true, "reason": "Clause C12: INFORMATIONAL - YES"} if {
        input.personneltype == "SALES PERSONNEL"
    }

    allow_c13_info := {"C13": true, "reason": "Clause C13: INFORMATIONAL - YES"} if {
        true
    }

    allow_c14_info := {"C14": true, "reason": "Clause C14: INFORMATIONAL - YES"} if {
        true
    }

    allow_c1_rest := {"C1": true, "reason": "Clause C1: RESTRICTION - YES"} if {
        input.policyid == "HR/Pol/02/2014"
        input.companyname == "NAGA LIMITED"
    }

    allow_c2_limi := {"C2": true, "reason": "Clause C2: LIMIT - YES"} if {
        input.relativefriendlodgingreimbursement == "25% of eligible amount"
        input.twinsharingreimbursementcap == "125% of a Senior level employee's eligible amount"
    }

    allow_c3_limi := {"C3": true, "reason": "Clause C3: LIMIT - YES"} if {
        input.reimbursementdetermination == "employee category"
        input.reimbursementbasis == "eligible amount or bill amount (lesser of)"
        input.referenceclause == "C1"
    }

    allow_c4_appr := {"C4": true, "reason": "Clause C4: APPROVAL_REQUIRED - YES"} if {
        input.approvalauthority == "Reporting Manager"
    }

    allow_c5_rest := {"C5": true, "reason": "Clause C5: RESTRICTION - YES"} if {
        input.traveladvancesettlementdeadline == "2 days"
    }

    allow_c6_rest := {"C6": true, "reason": "Clause C6: RESTRICTION - YES"} if {
        true
    }

    allow_c7_rest := {"C7": true, "reason": "Clause C7: RESTRICTION - YES"} if {
        input.validationdepartments == "HR and Accounts"
        input.referenceannexurecityclassification == "Annexure 2"
        input.referenceannexurefieldworkallowance == "Annexure 3"
    }

    allow_c8_limi := {"C8": true, "reason": "Clause C8: LIMIT - YES"} if {
        true
    }

    allow_c9_info := {"C9": true, "reason": "Clause C9: INFORMATIONAL - YES"} if {
        input.cityclassificationmetros == "Mumbai, Delhi, Kolkata"
        input.cityclassificationstatecapitalshillstations == "Chennai, Hyderabad, Shimla"
        input.cityclassificationdistrictheadquarters == "Coimbatore, Madurai"
    }
