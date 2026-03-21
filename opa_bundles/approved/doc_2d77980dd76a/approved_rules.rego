package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_2d77980dd76a
# All approved clauses included


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_applicableroles := ["Senior Managers"]
    allowed_tripdurationthreshold := ["6"]
    allowed_travelclass := ["Business class"]
    allowed_enforcementlevel := ["optional (MAY)"]

    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        allowed_applicableroles[_] == input.applicableroles
    allowed_tripdurationthreshold[_] == input.tripdurationthreshold
    allowed_travelclass[_] == input.travelclass
    allowed_enforcementlevel[_] == input.enforcementlevel
    }

# Default: Allow if no violations
allow_default {
    true
}
