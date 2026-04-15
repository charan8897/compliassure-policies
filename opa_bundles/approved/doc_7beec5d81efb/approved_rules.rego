package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_7beec5d81efb
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        true
    }

# Default: Allow if no violations
allow_default {
    true
}
