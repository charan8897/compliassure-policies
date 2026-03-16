package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_e0c1edf7a504
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.travelclasspreference == "Business class"
    input.minimumtravelduration >= 6
    input.applicableroles == "Senior Managers"
    }


    # Rule: C2
    # Intent: ADVISORY
    # Action: enforce
    # Ambiguous: False
    allow_c2_gen := {"allow": true, "reason": "Clause C2: ADVISORY - EDITED"} if {
        input.origincity == "London"
    input.destinationcity == "Paris"
    input.recommendedtravelmode == "Airplane"
    }

# Default: Allow if no violations
allow_default {
    true
}
