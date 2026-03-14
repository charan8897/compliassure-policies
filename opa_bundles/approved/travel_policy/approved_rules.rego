package travel_policy
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    # Intent: LIMIT
    # Action: enforce
    # Ambiguous: False
    # Intent: LIMIT
    # Action: enforce
    # Ambiguous: False
    # Intent: APPROVAL_REQUIRED
    # Action: enforce
    # Ambiguous: False
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    # Intent: LIMIT
    # Action: enforce
    # Ambiguous: False
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False

    allow_c10_appr := {"C10": true, "reason": "Clause C10: APPROVAL_REQUIRED - YES"} if {
        true
    }

    allow_c10_cond := {"allow": true, "reason": "Clause C10: Conditional Allowance - CONDITIONAL"} if {
        input.minimumoutofficeduration >= 6
    }

    allow_c11_advi := {"C11": true, "reason": "Clause C11: ADVISORY - YES"} if {
        input.reservationleadtime == "2 weeks"
    }

    allow_c11_rest := {"allow": true, "reason": "Clause C11: Restriction - YES"} if {
        input.personalcarmaximumdailydistance == "200 km"
    input.bikemaximumdailydistance == "50 km"
    input.grouptravelminimumpassengers == 3
    }

    allow_c12_info := {"allow": true, "reason": "Clause C12: Informational - OK"} if {
        input.personneltype == "SALES PERSONNEL"
    input.annexurereference == 5
    }

    allow_c12_rest := {"C12": true, "reason": "Clause C12: RESTRICTION - YES"} if {
        true
    }

    allow_c13_advi := {"C13": true, "reason": "Clause C13: ADVISORY - YES"} if {
        true
    }

    allow_c13_info := {"allow": true, "reason": "Clause C13: Informational - OK"} if {
        input.allowancetype == "Daily Allowance (Local Sales)"
    input.annexurereference == 6
    }

    allow_c14_info := {"C14": true, "reason": "Clause C14: INFORMATIONAL - YES"} if {
        true
    }

    allow_c15_info := {"C15": true, "reason": "Clause C15: INFORMATIONAL - YES"} if {
        true
    }

    allow_c16_info := {"C16": true, "reason": "Clause C16: INFORMATIONAL - YES"} if {
        input.passportvalidity == "6 months"
        input.sourcedocument == "STANDARDS FOR TRAVEL ARRANGEMENTS"
        input.sourceversion == "1.9"
    }

    allow_c17_info := {"C17": true, "reason": "Clause C17: INFORMATIONAL - YES"} if {
        true
    }

    allow_c18_info := {"C18": true, "reason": "Clause C18: INFORMATIONAL - YES"} if {
        true
    }

    allow_c19_info := {"C19": true, "reason": "Clause C19: INFORMATIONAL - YES"} if {
        true
    }

    allow_c1_rest := {"C1": true, "reason": "Clause C1: RESTRICTION - YES"} if {
        true
    }

    allow_c20_info := {"C20": true, "reason": "Clause C20: INFORMATIONAL - YES"} if {
        true
    }

    allow_c2_info := {"C2": true, "reason": "Clause C2: INFORMATIONAL - YES"} if {
        input.policyowner == "EVP, Operations"
        input.policymanager == "Global Commercial Lead, Business Travel (Procurement)"
    }

    allow_c2_limi := {"allow": true, "reason": "Clause C2: Limit - STRICT"} if {
        input.relativefriendlodgingreimbursement == "25% of eligible amount"
    input.twinsharingreimbursementcap == "125% of a Senior level employee's eligible amount"
    }

    allow_c3_info := {"C3": true, "reason": "Clause C3: INFORMATIONAL - YES"} if {
        input.compliancelevels == "MUST, EXPECTED, SHOULD"
        input.reportingfrequency == "periodically"
        input.reportingrecipient == "SET"
    }

    allow_c3_limi := {"allow": true, "reason": "Clause C3: Limit - STRICT"} if {
        input.reimbursementdeterminationfactor == "employee category"
    input.reimbursementbasis == "lower of eligible amount or bill amount"
    }

    allow_c4_appr := {"allow": true, "reason": "Clause C4: Approval Required - CONDITIONAL"} if {
        input.approvalauthority == "Reporting Manager"
    }

    allow_c4_rest := {"C4": true, "reason": "Clause C4: RESTRICTION - YES"} if {
        input.auditfrequency == "regularly"
        input.disciplinaryaction == "up to and including dismissal"
    }

    allow_c5_rest := {"C5": true, "reason": "Clause C5: RESTRICTION - YES"} if {
        true
    }

    allow_c6_appr := {"C6": true, "reason": "Clause C6: APPROVAL_REQUIRED - YES"} if {
        true
    }

    allow_c6_rest := {"allow": true, "reason": "Clause C6: Restriction - YES"} if {
        true
    }

    allow_c7_appr := {"allow": true, "reason": "Clause C7: Approval Required - CONDITIONAL"} if {
        input.validationdepartments == "HR and Accounts departments"
    input.approvalauthority == "Reporting Manager"
    }

    allow_c7_rest := {"C7": true, "reason": "Clause C7: RESTRICTION - YES"} if {
        true
    }

    allow_c8_advi := {"C8": true, "reason": "Clause C8: ADVISORY - YES"} if {
        true
    }

    allow_c8_limi := {"allow": true, "reason": "Clause C8: Limit - STRICT"} if {
        true
    }

    allow_c9_advi := {"C9": true, "reason": "Clause C9: ADVISORY - YES"} if {
        true
    }

    allow_c9_info := {"allow": true, "reason": "Clause C9: Informational - OK"} if {
        input.cityclassificationmetros == "Mumbai, Delhi, Kolkata"
    input.cityclassificationstatecapitalshillstations == "Chennai, Hyderabad, Shimla"
    input.cityclassificationdistrictheadquarters == "Coimbatore, Madurai"
    input.cityclassificationothertowns == "Other Towns"
    }
