package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_67886cce86d2
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.latebookingthreshold == "48 hours"
    input.enforcementlevel == "MUST"
    }

# Default: Allow if no violations
allow_default {
    true
}
