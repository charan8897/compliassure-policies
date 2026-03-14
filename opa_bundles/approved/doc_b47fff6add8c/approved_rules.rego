package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_b47fff6add8c
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c1_gen := {"allow": true, "reason": "Clause C1: RESTRICTION - EDITED"} if {
        input.companyname == "NAGA SADHU BABA LIMITED"
    }


    # Rule: C10
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c10_cond := {"allow": true, "reason": "Clause C10: Conditional Allowance - CONDITIONAL"} if {
        input.minimumoutofficeduration >= 6
    }


    # Rule: C11
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c11_rest := {"allow": true, "reason": "Clause C11: Restriction - YES"} if {
        input.personalcarmaximumdailydistance == "200 km"
    input.bikemaximumdailydistance == "50 km"
    input.grouptravelminimumpassengers == 3
    }


    # Rule: C12
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c12_info := {"allow": true, "reason": "Clause C12: Informational - OK"} if {
        input.personneltype == "SALES PERSONNEL"
    input.annexurereference == 5
    }


    # Rule: C13
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c13_info := {"allow": true, "reason": "Clause C13: Informational - OK"} if {
        input.allowancetype == "Daily Allowance (Local Sales)"
    input.annexurereference == 6
    }


    # Rule: C14
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c14_info := {"allow": true, "reason": "Clause C14: Informational - OK"} if {
        input.policyeffectivedate == "April 1st, 2014"
    }


    # Rule: C2
    # Intent: LIMIT
    # Action: enforce
    # Ambiguous: False
    allow_c2_limi := {"allow": true, "reason": "Clause C2: Limit - STRICT"} if {
        input.relativefriendlodgingreimbursement == "25% of eligible amount"
    input.twinsharingreimbursementcap == "125% of a Senior level employee's eligible amount"
    }


    # Rule: C3
    # Intent: LIMIT
    # Action: enforce
    # Ambiguous: False
    allow_c3_limi := {"allow": true, "reason": "Clause C3: Limit - STRICT"} if {
        input.reimbursementdeterminationfactor == "employee category"
    input.reimbursementbasis == "lower of eligible amount or bill amount"
    }


    # Rule: C4
    # Intent: APPROVAL_REQUIRED
    # Action: enforce
    # Ambiguous: False
    allow_c4_appr := {"allow": true, "reason": "Clause C4: Approval Required - CONDITIONAL"} if {
        input.approvalauthority == "Reporting Manager"
    }


    # Rule: C5
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c5_rest := {"allow": true, "reason": "Clause C5: Restriction - YES"} if {
        input.traveladvancesettlementdeadline == "2 days"
    }


    # Rule: C6
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c6_rest := {"allow": true, "reason": "Clause C6: Restriction - YES"} if {
        true
    }


    # Rule: C7
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c7_rest := {"allow": true, "reason": "Clause C7: Restriction - YES"} if {
        input.validationdepartments == "HR and Accounts"
    input.referenceannexurecityclassification == "Annexure 2"
    input.referenceannexurefieldworkallowance == "Annexure 3"
    }


    # Rule: C8
    # Intent: LIMIT
    # Action: enforce
    # Ambiguous: False
    allow_c8_limi := {"allow": true, "reason": "Clause C8: Limit - STRICT"} if {
        true
    }


    # Rule: C9
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c9_info := {"allow": true, "reason": "Clause C9: Informational - OK"} if {
        input.cityclassificationmetros == "Mumbai, Delhi, Kolkata"
    input.cityclassificationstatecapitalshillstations == "Chennai, Hyderabad, Shimla"
    input.cityclassificationdistrictheadquarters == "Coimbatore, Madurai"
    input.cityclassificationothertowns == "Other Towns"
    }

# Default: Allow if no violations
allow_default {
    true
}
