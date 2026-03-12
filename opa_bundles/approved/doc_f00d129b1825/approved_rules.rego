package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_f00d129b1825
# All approved clauses included


    # Rule: C1
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c1_info := {"allow": true, "reason": "Clause C1: Informational - APPROVED"} if {
        true
    }

# Default: Allow if no violations
allow_default {
    true
}
