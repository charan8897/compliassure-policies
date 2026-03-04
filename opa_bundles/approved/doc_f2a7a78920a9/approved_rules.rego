package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_f2a7a78920a9
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        input.origincity == "London"
    input.destinationcity == "Paris"
    input.preferredtransportmode == "train"
    }

# Default: Allow if no violations
allow_default {
    true
}
