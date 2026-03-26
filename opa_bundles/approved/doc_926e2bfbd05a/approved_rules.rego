package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_926e2bfbd05a
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_gen := {"allow": true, "reason": "Clause C1: CONDITIONAL_ALLOWANCE - EDITED"} if {
        input.budgetbufferpercentage == "30%"
    input.bufferapplicability == "only train travel expenses"
    }

# Default: Allow if no violations
allow_default {
    true
}
