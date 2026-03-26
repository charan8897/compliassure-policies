package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_4758e6f60f8c
# All approved clauses included


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_recommendedtransportmode := ["train"]
    allowed_enforcementlevel := ["SHOULD"]

    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        allowed_recommendedtransportmode[_] == input.recommendedtransportmode
                allowed_enforcementlevel[_] == input.enforcementlevel
    }

# Default: Allow if no violations
allow_default {
    true
}
