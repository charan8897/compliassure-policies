package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-04T07:36:50.845984
# Document ID: doc_cbc2976d703a
# Only approved clauses included


    # Rule: C1
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c1_advi := {"allow": true, "reason": "Clause C1: Advisory - CONDITIONAL"} if {
        input.travelmodepreference == "Train"
    input.triporigin == "London"
    input.tripdestination == "Paris"
    }

# Default: Allow if no violations
allow_default {
    true
}
