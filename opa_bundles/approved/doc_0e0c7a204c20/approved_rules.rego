package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_0e0c7a204c20
# All approved clauses included


    # Rule: C2
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c2_rest := {"allow": true, "reason": "Clause C2: Restriction - YES"} if {
        input.hotelcity == "New York City"
    input.hotelcitycode == "NYC"
    input.maximumhotelcostpernight <= 300
    }

# Default: Allow if no violations
allow_default {
    true
}
