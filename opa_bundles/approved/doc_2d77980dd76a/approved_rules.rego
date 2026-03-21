package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_2d77980dd76a
# All approved clauses included


    # Rule: C1
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_travelclass := ["Business class"]
    allowed_tripdurationthreshold := ["6"]
    allowed_enforcementlevel := ["optional"]
    allowed_applicableroles := ["Senior Managers"]

    allow_c1_advi := {"allow": true, "reason": "Clause C1: Advisory - CONDITIONAL"} if {
        allowed_travelclass[_] == input.travelclass
    allowed_tripdurationthreshold[_] == input.tripdurationthreshold
    allowed_enforcementlevel[_] == input.enforcementlevel
    allowed_applicableroles[_] == input.applicableroles
    }

# Default: Allow if no violations
allow_default {
    true
}
