package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_0014e14016d9
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.hotelnightcostthreshold == "300 USD"
    input.bookinglocation == "New York City (NYC)"
    input.enforcementlevel == "MUST"
    }

# Default: Allow if no violations
allow_default {
    true
}
