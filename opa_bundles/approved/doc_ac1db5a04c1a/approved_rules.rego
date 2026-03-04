package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_ac1db5a04c1a
# All approved clauses included


    # Rule: C1
    # Intent: LIMIT
    # Action: warn
    # Ambiguous: False
    allow_c1_limi := {"allow": true, "reason": "Clause C1: Limit - STRICT"} if {
        input.maximumcarbonfootprint <= 500
    }

# Default: Allow if no violations
allow_default {
    true
}
