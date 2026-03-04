package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_e367f65b7e4e
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        input.policyid == "HR/Pol/02/2014"
    input.companyname == "NAGA LIMITED"
    }


    # Rule: C10
    # Intent: LIMIT
    # Action: enforce
    # Ambiguous: False
    allow_c10_limi := {"allow": true, "reason": "Clause C10: Limit - STRICT"} if {
        input.personalvehicledailylimit == "200 kms"
    input.grouptravelthresholddistance == "200 kms"
    input.minimumgrouptravelsize >= 3
    input.driverchargespayable == "No"
    input.personalbikedailylimit == "50 kms"
    }


    # Rule: C11
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c11_info := {"allow": true, "reason": "Clause C11: Informational - OK"} if {
        input.allowancedetailsfor == "SALES PERSONNEL"
    input.referenceclause == "C1"
    }


    # Rule: C12
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c12_info := {"allow": true, "reason": "Clause C12: Informational - OK"} if {
        input.allowancetype == "Daily Allowance (Food & Fuel)"
    input.personneltype == "Local SALES PERSONNEL"
    }


    # Rule: C13
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c13_info := {"allow": true, "reason": "Clause C13: Informational - OK"} if {
        true
    }


    # Rule: C7
    # Intent: LIMIT
    # Action: enforce
    # Ambiguous: False
    allow_c7_limi := {"allow": true, "reason": "Clause C7: Limit - STRICT"} if {
        input.lodginginclusions == "rent, taxes, laundry"
    input.boardinginclusions == "food, water, refreshments, tips"
    input.reimbursementcap == "lower of actual bill amount or Annexure-1 amount"
    }


    # Rule: C8
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c8_info := {"allow": true, "reason": "Clause C8: Informational - OK"} if {
        input.metrocities == "Mumbai, Delhi, Kolkata"
    input.statecapitalhillstations == "Chennai, Hyderabad"
    input.districtheadquarters == "Coimbatore, Madurai"
    }


    # Rule: C9
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c9_cond := {"allow": true, "reason": "Clause C9: Conditional Allowance - CONDITIONAL"} if {
        input.minimumworkduration >= 6
    }

# Default: Allow if no violations
allow_default {
    true
}
