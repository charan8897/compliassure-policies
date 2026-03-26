package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_814f7ebd3971
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_gen := {"allow": true, "reason": "Clause C1: CONDITIONAL_ALLOWANCE - EDITED"} if {
        input.travelclassforinternationaltravel == "Business class"
    input.internationaltraveldurationthreshold >= 8+ hours
    }

# Default: Allow if no violations
allow_default {
    true
}
