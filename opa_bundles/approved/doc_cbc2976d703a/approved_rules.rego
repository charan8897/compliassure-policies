package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-04T07:36:34.747118
# Document ID: doc_cbc2976d703a
# Only approved clauses included


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        input.travelclassauthorization == "Business Class"
    input.authorizedroles == "Senior Managers"
    input.traveltype == "international travel"
    input.minimumtravelduration >= 6
    }

# Default: Allow if no violations
allow_default {
    true
}
