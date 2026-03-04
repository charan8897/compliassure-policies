package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_57ee44ba7e39
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        true
    }


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        input.latebookingthreshold == "48 hours"
    }

# Default: Allow if no violations
allow_default {
    true
}
