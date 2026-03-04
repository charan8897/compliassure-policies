package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_9684190c2f12
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        input.policyid == "HR/Pol/02/2014"
    input.companyname == "NAGA LIMITED"
    }


    # Rule: C10
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c10_cond := {"allow": true, "reason": "Clause C10: Conditional Allowance - CONDITIONAL"} if {
        input.minimumoutofficeduration >= 6
    }


    # Rule: C11
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c11_rest := {"allow": true, "reason": "Clause C11: Restriction - YES"} if {
        input.maximumdailycardistance <= 200
    input.maximumdailybikedistance <= 50
    }


    # Rule: C12
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c12_info := {"allow": true, "reason": "Clause C12: Informational - OK"} if {
        input.allowancedetailsreference == "Annexure-5"
    input.personneltype == "Sales personnel"
    }


    # Rule: C13
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c13_cond := {"allow": true, "reason": "Clause C13: Conditional Allowance - CONDITIONAL"} if {
        input.allowancecoverage == "food and fuel"
    }


    # Rule: C6
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c6_rest := {"allow": true, "reason": "Clause C6: Restriction - YES"} if {
        true
    }


    # Rule: C7
    # Intent: APPROVAL_REQUIRED
    # Action: warn
    # Ambiguous: False
    allow_c7_appr := {"allow": true, "reason": "Clause C7: Approval Required - CONDITIONAL"} if {
        input.validationdepartments == "HR and Accounts"
    input.approvalauthority == "Reporting Manager"
    }


    # Rule: C8
    # Intent: LIMIT
    # Action: warn
    # Ambiguous: False
    allow_c8_limi := {"allow": true, "reason": "Clause C8: Limit - STRICT"} if {
        input.reimbursementcondition == "eligible amount or bill amount, whichever is LESS"
    }


    # Rule: C9
    # Intent: INFORMATIONAL
    # Action: warn
    # Ambiguous: False
    allow_c9_info := {"allow": true, "reason": "Clause C9: Informational - OK"} if {
        input.cityclassificationcategories == "Metros, State Capitals/Hill Stations, District Headquarters, Other Towns"
    input.metrocities == "Mumbai, Delhi, Kolkata"
    input.statecapitalhillstationexamples == "Chennai, Hyderabad, Shimla"
    input.districtheadquarterexamples == "Coimbatore, Madurai"
    }

# Default: Allow if no violations
allow_default {
    true
}
