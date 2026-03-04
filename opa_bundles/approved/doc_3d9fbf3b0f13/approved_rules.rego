package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_3d9fbf3b0f13
# All approved clauses included


    # Rule: C1
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c1_advi := {"allow": true, "reason": "Clause C1: Advisory - CONDITIONAL"} if {
        input.travelmodesuggestion == "Train"
    input.travelroute == "London and Paris"
    input.policysource == "General Policy"
    }

# Default: Allow if no violations
allow_default {
    true
}
