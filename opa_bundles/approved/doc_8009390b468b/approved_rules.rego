package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_8009390b468b
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        true
    }

# Default: Allow if no violations
allow_default {
    true
}
