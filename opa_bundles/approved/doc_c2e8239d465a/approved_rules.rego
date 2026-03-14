package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_c2e8239d465a
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.travelclassallowance == "Business class"
    input.minimumtravelduration >= 6
    input.travelscope == "international destinations"
    }

# Default: Allow if no violations
allow_default {
    true
}
