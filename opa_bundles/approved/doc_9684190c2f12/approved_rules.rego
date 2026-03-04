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

# Default: Allow if no violations
allow_default {
    true
}
