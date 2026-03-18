package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_e8f8ecf3e80b
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_gen := {"allow": true, "reason": "Clause C1: CONDITIONAL_ALLOWANCE - EDITED"} if {
        input.travelclassforinternationaltravel == "Economic class"
    input.internationaltraveldurationthreshold == "8 hours"
    }

# Default: Allow if no violations
allow_default {
    true
}
