package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_29c2134415e2
# All approved clauses included


    # Rule: C1
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_travelmodepreference := ["Train"]
    allowed_travelroute := ["London and Paris"]
    allowed_recommendationscope := ["all employees"]

    allow_c1_advi := {"allow": true, "reason": "Clause C1: Advisory - CONDITIONAL"} if {
        allowed_travelmodepreference[_] == input.travelmodepreference
    allowed_travelroute[_] == input.travelroute
    allowed_recommendationscope[_] == input.recommendationscope
    }

# Default: Allow if no violations
allow_default {
    true
}
