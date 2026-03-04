package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_06970ab3de68
# All approved clauses included


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        input.hotelcity == "New York City (NYC)"
    input.costpernightthreshold == "300 USD"
    input.enforcementlevel == "MUST"
    }

# Default: Allow if no violations
allow_default {
    true
}
