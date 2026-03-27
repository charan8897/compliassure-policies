package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_fa6d0cbfd649
# All approved clauses included


    # Rule: C3
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c3_cond := {"allow": true, "reason": "Clause C3: Conditional Allowance - CONDITIONAL"} if {
        true
    }


    # Rule: C4
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c4_rest := {"allow": true, "reason": "Clause C4: Restriction - YES"} if {
        input.latebookingthreshold <= 48
    }

# Default: Allow if no violations
allow_default {
    true
}
