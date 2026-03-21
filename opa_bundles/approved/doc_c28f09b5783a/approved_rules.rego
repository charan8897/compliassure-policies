package travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_c28f09b5783a
# All approved clauses included


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_travelroute := ["London and Paris"]
    allowed_transportrecommendation := ["train travel"]

    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - YES"} if {
        input.travelroute in allowed_travelroute
    input.transportrecommendation in allowed_transportrecommendation
    }

# Default: Allow if no violations
allow_default {
    true
}
