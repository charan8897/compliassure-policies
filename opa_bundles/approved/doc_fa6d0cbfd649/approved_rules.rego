package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_fa6d0cbfd649
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.internationaltraveldurationthreshold > 6
    }


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_triporigin := ["London"]
    allowed_tripdestination := ["Paris"]
    allowed_routedirection := ["vice-versa"]

    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        allowed_triporigin[_] == input.triporigin
                allowed_tripdestination[_] == input.tripdestination
                allowed_routedirection[_] == input.routedirection
    }

# Default: Allow if no violations
allow_default {
    true
}
