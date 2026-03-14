package travel_policy

    allow_c10_cond := {"allow": true, "reason": "Clause C10: Conditional Allowance - CONDITIONAL"} if {
        input.minimumoutofficeduration >= 6
    }

    allow_c11_rest := {"allow": true, "reason": "Clause C11: Restriction - YES"} if {
        true
    }

    allow_c12_info := {"allow": true, "reason": "Clause C12: Informational - OK"} if {
        input.personneltype == "SALES PERSONNEL"
    }

    allow_c13_info := {"allow": true, "reason": "Clause C13: Informational - OK"} if {
        true
    }

    allow_c14_info := {"allow": true, "reason": "Clause C14: Informational - OK"} if {
        true
    }

    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        input.policyid == "HR/Pol/02/2014"
    input.companyname == "NAGA LIMITED"
    }

    allow_c2_limi := {"allow": true, "reason": "Clause C2: Limit - STRICT"} if {
        input.relativefriendlodgingreimbursement == "25% of eligible amount"
    input.twinsharingreimbursementcap == "125% of a Senior level employee's eligible amount"
    }

    allow_c3_limi := {"allow": true, "reason": "Clause C3: Limit - STRICT"} if {
        input.boardingreimbursementdetermination == "employee category (refer Annexure – 1)"
    input.reimbursementlimit == "lesser of actual bill amount or eligible amount as per Annexure-1"
    }

    allow_c4_appr := {"allow": true, "reason": "Clause C4: Approval Required - CONDITIONAL"} if {
        true
    }

    allow_c5_rest := {"allow": true, "reason": "Clause C5: Restriction - YES"} if {
        input.traveladvancesettlementdeadline == "2 days"
    }

    allow_c6_rest := {"allow": true, "reason": "Clause C6: Restriction - YES"} if {
        true
    }

    allow_c7_appr := {"allow": true, "reason": "Clause C7: Approval Required - CONDITIONAL"} if {
        input.validationdepartments == "HR and Accounts departments"
    input.approvalauthority == "Reporting Manager"
    }

    allow_c7_rest := {"C7": true, "reason": "Clause C7: RESTRICTION - YES"} if {
        input.validationdepartments == "HR and Accounts"
        input.referenceannexurecityclassification == "Annexure 2"
        input.referenceannexurefieldworkallowance == "Annexure 3"
    }

    allow_c8_limi := {"allow": true, "reason": "Clause C8: Limit - STRICT"} if {
        input.reimbursementcondition == "lesser of eligible amount or bill amount"
    }

    allow_c9_info := {"allow": true, "reason": "Clause C9: Informational - OK"} if {
        input.cityclassificationmetros == "Mumbai, Delhi, Kolkata"
    input.cityclassificationstatecapitalshillstations == "Chennai, Hyderabad, Shimla"
    input.cityclassificationdistrictheadquarters == "Coimbatore, Madurai"
    input.cityclassificationother == "Other Towns"
    }
