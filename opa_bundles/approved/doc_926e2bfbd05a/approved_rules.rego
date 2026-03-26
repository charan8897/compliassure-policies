package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_926e2bfbd05a
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_budgetbufferpercentage := ["20"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        allowed_budgetbufferpercentage[_] == input.budgetbufferpercentage
    }

# Default: Allow if no violations
allow_default {
    true
}
