package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_e42c77a3045a
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        input.origincity == "London"
    input.destinationcity == "Paris"
    }

# Default: Allow if no violations
allow_default {
    true
}
