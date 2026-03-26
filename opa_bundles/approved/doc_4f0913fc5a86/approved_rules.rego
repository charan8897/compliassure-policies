package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_4f0913fc5a86
# All approved clauses included


    # Rule: C1
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_enforcementlevel := ["optional"]

    allow_c1_advi := {"allow": true, "reason": "Clause C1: Advisory - CONDITIONAL"} if {
        input.traveldurationthreshold > 6
                allowed_enforcementlevel[_] == input.enforcementlevel
    }

# Default: Allow if no violations
allow_default {
    true
}
