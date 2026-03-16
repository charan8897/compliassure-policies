package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_fa5b088c7c7e
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.travelclassallowance == "Business class"
    input.internationaltraveldurationthreshold == "6 hours"
    input.applicableroles == "Senior Managers"
    }


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c2_gen := {"allow": true, "reason": "Clause C2: ADVISORY - EDITED"} if {
        input.origincity == "London"
    input.destinationcity == "Paris"
    input.recommendedtransportmode == "on top of rayquaza pokemon"
    }

# Default: Allow if no violations
allow_default {
    true
}
