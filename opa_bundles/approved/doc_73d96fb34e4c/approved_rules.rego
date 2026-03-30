package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_73d96fb34e4c
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allowed_enforcementstatus := ["MUST"]

    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        allowed_enforcementstatus[_] == input.enforcementstatus
    }

# Default: Allow if no violations
allow_default {
    true
}
