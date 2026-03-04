package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_ccda48e21ca0
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.location == "New York City (NYC)"
    input.costpernightthreshold == "300 USD"
    input.enforcementlevel == "MUST"
    input.numericalthreshold == "300 USD"
    }

# Default: Allow if no violations
allow_default {
    true
}
