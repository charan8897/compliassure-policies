package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_bef9ad8d272c
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        true
    }


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        input.sourcedocument == "Travel Guidelines 1"
    input.triporigin == "London"
    input.tripdestination == "Paris"
    input.recommendedtransportation == "train"
    }

# Default: Allow if no violations
allow_default {
    true
}
