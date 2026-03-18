package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_17c6d3dbd103
# All approved clauses included


    # Rule: C1
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_travelclass := ["Business class"]
    allowed_traveldurationmeasurement := ["departure to arrival"]

    allow_c1_advi := {"allow": true, "reason": "Clause C1: Advisory - YES"} if {
        allowed_travelclass[_] == input.travelclass
    input.minimumtravelduration >= 6
    allowed_traveldurationmeasurement[_] == input.traveldurationmeasurement
    }

# Default: Allow if no violations
allow_default {
    true
}
