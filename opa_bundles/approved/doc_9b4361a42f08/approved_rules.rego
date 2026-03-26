package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_9b4361a42f08
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c1_gen := {"allow": true, "reason": "Clause C1: RESTRICTION - EDITED"} if {
        input.policyid == "HR/Pol/02/2026"
    input.companyname == "NAGA LIMITED"
    }


    # Rule: C10
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c10_cond := {"allow": true, "reason": "Clause C10: Conditional Allowance - CONDITIONAL"} if {
        input.minimumoutofficeduration > 6
    }


    # Rule: C11
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c11_rest := {"allow": true, "reason": "Clause C11: Restriction - YES"} if {
        input.personalcardailykilometerlimit > 200
                input.bikedailykilometerlimit > 50
                input.grouptravelminimumpeople == 3
    }


    # Rule: C12
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c12_info := {"allow": true, "reason": "Clause C12: Informational - OK"} if {
        true
    }


    # Rule: C13
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c13_info := {"allow": true, "reason": "Clause C13: Informational - OK"} if {
        true
    }


    # Rule: C14
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c14_info := {"allow": true, "reason": "Clause C14: Informational - OK"} if {
        true
    }


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        true
    }


    # Rule: C3
    # Intent: LIMIT
    # Action: enforce
    # Ambiguous: False
    allow_c3_limi := {"allow": true, "reason": "Clause C3: Limit - STRICT"} if {
        true
    }


    # Rule: C4
    # Intent: APPROVAL_REQUIRED
    # Action: enforce
    # Ambiguous: False
    allow_c4_appr := {"allow": true, "reason": "Clause C4: Approval Required - CONDITIONAL"} if {
        true
    }


    # Rule: C5
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c5_rest := {"allow": true, "reason": "Clause C5: Restriction - YES"} if {
        input.traveladvancesettlementdeadline <= 2
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
        true
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
        true
    }

# Default: Allow if no violations
allow_default {
    true
}
