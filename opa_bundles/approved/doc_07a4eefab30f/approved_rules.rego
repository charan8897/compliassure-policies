package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_07a4eefab30f
# All approved clauses included


    # Rule: C2
    # Intent: LIMIT
    # Action: warn
    # Ambiguous: False
    allow_c2_limi := {"allow": true, "reason": "Clause C2: Limit - STRICT"} if {
        input.maximumcarbonfootprint <= 500
    input.carbonfootprintthreshold == "500kg CO2"
    }

# Default: Allow if no violations
allow_default {
    true
}
