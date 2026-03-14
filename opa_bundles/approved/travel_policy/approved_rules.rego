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

    allow_c10_appr := {"allow": true, "reason": "Clause C10: Approval Required - CONDITIONAL"} if {
        true
    }

    allow_c10_cond := {"C10": true, "reason": "Clause C10: CONDITIONAL_ALLOWANCE - YES"} if {
        input.minimumoutofficeduration >= 6
    }

    allow_c11_advi := {"allow": true, "reason": "Clause C11: Advisory - CONDITIONAL"} if {
        input.reservationleadtime == "2 weeks"
    }

    allow_c11_rest := {"C11": true, "reason": "Clause C11: RESTRICTION - YES"} if {
        input.personalcarmaximumdailydistance == "200 km"
        input.bikemaximumdailydistance == "50 km"
        input.grouptravelminimumpassengers == "3"
    }

    allow_c12_info := {"C12": true, "reason": "Clause C12: INFORMATIONAL - YES"} if {
        input.personneltype == "SALES PERSONNEL"
        input.annexurereference == "5"
    }

    allow_c12_rest := {"allow": true, "reason": "Clause C12: Restriction - YES"} if {
        true
    }

    allow_c13_advi := {"allow": true, "reason": "Clause C13: Advisory - CONDITIONAL"} if {
        true
    }

    allow_c13_info := {"C13": true, "reason": "Clause C13: INFORMATIONAL - YES"} if {
        input.allowancetype == "Daily Allowance (Local Sales)"
        input.annexurereference == "6"
    }

    allow_c14_info := {"allow": true, "reason": "Clause C14: Informational - OK"} if {
        true
    }

    allow_c15_info := {"allow": true, "reason": "Clause C15: Informational - OK"} if {
        true
    }

    allow_c16_info := {"allow": true, "reason": "Clause C16: Informational - OK"} if {
        input.passportvalidity == "6 months"
    input.sourcedocument == "STANDARDS FOR TRAVEL ARRANGEMENTS"
    input.sourceversion == 1.9
    }

    allow_c17_info := {"allow": true, "reason": "Clause C17: Informational - OK"} if {
        true
    }

    allow_c18_info := {"allow": true, "reason": "Clause C18: Informational - OK"} if {
        true
    }

    allow_c19_info := {"allow": true, "reason": "Clause C19: Informational - OK"} if {
        true
    }

    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        true
    }

    allow_c20_info := {"allow": true, "reason": "Clause C20: Informational - OK"} if {
        true
    }

    allow_c2_info := {"allow": true, "reason": "Clause C2: Informational - OK"} if {
        input.policyowner == "EVP, Operations"
    input.policymanager == "Global Commercial Lead, Business Travel (Procurement)"
    }

    allow_c2_limi := {"C2": true, "reason": "Clause C2: LIMIT - YES"} if {
        input.relativefriendlodgingreimbursement == "25% of eligible amount"
        input.twinsharingreimbursementcap == "125% of a Senior level employee's eligible amount"
    }

    allow_c3_info := {"allow": true, "reason": "Clause C3: Informational - OK"} if {
        input.compliancelevels == "MUST, EXPECTED, SHOULD"
    input.reportingfrequency == "periodically"
    input.reportingrecipient == "SET"
    }

    allow_c3_limi := {"C3": true, "reason": "Clause C3: LIMIT - YES"} if {
        input.reimbursementdeterminationfactor == "employee category"
        input.reimbursementbasis == "lower of eligible amount or bill amount"
    }

    allow_c4_appr := {"C4": true, "reason": "Clause C4: APPROVAL_REQUIRED - YES"} if {
        input.approvalauthority == "Reporting Manager"
    }

    allow_c4_rest := {"allow": true, "reason": "Clause C4: Restriction - YES"} if {
        input.auditfrequency == "regularly"
    input.disciplinaryaction == "up to and including dismissal"
    }

    allow_c5_rest := {"allow": true, "reason": "Clause C5: Restriction - YES"} if {
        true
    }

    allow_c6_appr := {"allow": true, "reason": "Clause C6: Approval Required - CONDITIONAL"} if {
        true
    }

    allow_c6_rest := {"C6": true, "reason": "Clause C6: RESTRICTION - YES"} if {
        true
    }

    allow_c7_appr := {"allow": true, "reason": "Clause C7: Approval Required - CONDITIONAL"} if {
        input.validationdepartments == "HR and Accounts departments"
    input.approvalauthority == "Reporting Manager"
    }

    allow_c7_rest := {"allow": true, "reason": "Clause C7: Restriction - YES"} if {
        true
    }

    allow_c8_advi := {"allow": true, "reason": "Clause C8: Advisory - CONDITIONAL"} if {
        true
    }

    allow_c8_limi := {"C8": true, "reason": "Clause C8: LIMIT - YES"} if {
        true
    }

    allow_c9_advi := {"allow": true, "reason": "Clause C9: Advisory - CONDITIONAL"} if {
        true
    }

    allow_c9_info := {"C9": true, "reason": "Clause C9: INFORMATIONAL - YES"} if {
        input.cityclassificationmetros == "Mumbai, Delhi, Kolkata"
        input.cityclassificationstatecapitalshillstations == "Chennai, Hyderabad, Shimla"
        input.cityclassificationdistrictheadquarters == "Coimbatore, Madurai"
        input.cityclassificationothertowns == "Other Towns"
    }
