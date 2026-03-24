package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_1ead179bea68
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_travelclassforinternationaltravel := ["Business class"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        allowed_travelclassforinternationaltravel[_] == input.travelclassforinternationaltravel
    input.internationaltraveldurationthreshold > 6
    }

# Default: Allow if no violations
allow_default {
    true
}
