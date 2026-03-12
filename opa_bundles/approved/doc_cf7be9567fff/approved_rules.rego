package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_cf7be9567fff
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.travelclass == "Business class"
    input.minimumtravelduration >= 6
    input.permittedtravelmode == "flights"
    }

# Default: Allow if no violations
allow_default {
    true
}
