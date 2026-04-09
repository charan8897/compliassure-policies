package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_0aa6efce75b1
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.minimumflightdurationforbusinessclass > 6
    }


    # Rule: C3
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allowed_hotelcitycode := ["NYC"]

    allow_c3_rest := {"allow": true, "reason": "Clause C3: Restriction - YES"} if {
        allowed_hotelcitycode[_] == input.hotelcitycode
                input.maximumhotelcostpernight > 300
    }

# Default: Allow if no violations
allow_default {
    true
}
