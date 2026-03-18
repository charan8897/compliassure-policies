package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_b41438080b14
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_travelclassforinternationaltravel := ["Business class"]
    allowed_internationaltraveldurationthreshold := ["6"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        allowed_travelclassforinternationaltravel[_] == input.travelclassforinternationaltravel
    allowed_internationaltraveldurationthreshold[_] == input.internationaltraveldurationthreshold
    }

# Default: Allow if no violations
allow_default {
    true
}
