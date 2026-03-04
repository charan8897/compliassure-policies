package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-04T05:02:25.511014
# Document ID: doc_9ad5102e9606
# Only approved clauses included


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
