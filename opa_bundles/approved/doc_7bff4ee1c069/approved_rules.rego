package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-04T05:28:01.738488
# Document ID: doc_7bff4ee1c069
# Only approved clauses included


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
