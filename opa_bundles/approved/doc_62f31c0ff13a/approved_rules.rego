package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_62f31c0ff13a
# All approved clauses included


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        true
    }

# Default: Allow if no violations
allow_default {
    true
}
