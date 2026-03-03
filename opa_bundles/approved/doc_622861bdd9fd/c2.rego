package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-03T09:24:30.673223
# Document ID: doc_622861bdd9fd
# Only approved clauses included


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        input.travelroute == "London and Paris"
    input.recommendedtransport == "train"
    }

# Default: Allow if no violations
allow_default {
    true
}
