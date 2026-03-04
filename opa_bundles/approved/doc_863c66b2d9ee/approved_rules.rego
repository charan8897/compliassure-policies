package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_863c66b2d9ee
# All approved clauses included


    # Rule: C1
    # Intent: LIMIT
    # Action: warn
    # Ambiguous: False
    allow_c1_limi := {"allow": true, "reason": "Clause C1: Limit - STRICT"} if {
        input.carbonfootprintlimit == "500kg CO2"
    }

# Default: Allow if no violations
allow_default {
    true
}
