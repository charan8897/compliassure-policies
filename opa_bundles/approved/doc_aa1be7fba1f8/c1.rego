package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-03T05:54:29.934850
# Document ID: doc_aa1be7fba1f8
# Only approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.travelclassforinternationaltravel == "Business class"
    input.internationaltraveldurationthreshold == "6 hours"
    }

# Default: Allow if no violations
allow_default {
    true
}
