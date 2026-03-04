package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_db3aa7d5b882
# All approved clauses included


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
