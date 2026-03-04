package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-04T07:03:53.180877
# Document ID: doc_ac507486c81f
# Only approved clauses included


    # Rule: C2
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c2_rest := {"allow": true, "reason": "Clause C2: Restriction - YES"} if {
        input.hotelbookingcity == "New York City"
    input.hotelbookingcityabbreviation == "NYC"
    input.maximumhotelcostpernight <= 300
    }

# Default: Allow if no violations
allow_default {
    true
}
