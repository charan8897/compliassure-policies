package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-03T09:19:03.916258
# Document ID: doc_622861bdd9fd
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
