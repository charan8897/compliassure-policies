package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_d49b21e13f82
# All approved clauses included


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        input.triporigin == "London"
    input.tripdestination == "Paris"
    input.suggestedtravelmode == "train"
    }

# Default: Allow if no violations
allow_default {
    true
}
