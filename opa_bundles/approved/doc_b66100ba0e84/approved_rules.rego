package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_b66100ba0e84
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allowed_origincity := ["London"]
    allowed_destinationcity := ["Paris"]

    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        allowed_origincity[_] == input.origincity
    allowed_destinationcity[_] == input.destinationcity
    }

# Default: Allow if no violations
allow_default {
    true
}
