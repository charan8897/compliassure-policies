package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_01440d1aa28d
# All approved clauses included


    # Rule: C2
    # Intent: LIMIT
    # Action: enforce
    # Ambiguous: False
    allowed_destinationcity := ["New York City (NYC)"]

    allow_c2_limi := {"allow": true, "reason": "Clause C2: Limit - STRICT"} if {
        input.maximumhotelcostpernight <= 300
    allowed_destinationcity[_] == input.destinationcity
    }

# Default: Allow if no violations
allow_default {
    true
}
