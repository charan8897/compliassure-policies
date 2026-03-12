package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_f00d129b1825
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        input.travelmode == "train"
    input.origincity == "London"
    input.destinationcity == "Paris"
    input.enforcementlevel == "MUST"
    input.applicableto == "All travelers"
    }

# Default: Allow if no violations
allow_default {
    true
}
