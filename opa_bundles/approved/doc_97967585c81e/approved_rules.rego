package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_97967585c81e
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_gen := {"allow": true, "reason": "Clause C1: CONDITIONAL_ALLOWANCE - EDITED"} if {
        input.hotelnightcostthreshold == "500 USD"
    input.bookinglocation == "New York City (NYC)"
    input.enforcementlevel == "MUST"
    }

# Default: Allow if no violations
allow_default {
    true
}
