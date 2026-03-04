package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-04T07:43:18.405667
# Document ID: doc_dffbd88ef503
# Only approved clauses included


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
