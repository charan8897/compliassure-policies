package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_2d179ec63a82
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allowed_policyid := ["02"]

    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        allowed_policyid[_] == input.policyid
    }

# Default: Allow if no violations
allow_default {
    true
}
