package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_eeb6ce1154b8
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.bookingtimewindow == "48 hours"
    input.justificationrequirement == "mandatory"
    }

# Default: Allow if no violations
allow_default {
    true
}
