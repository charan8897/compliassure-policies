package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_97967585c81e
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_hotelnightcostthreshold := ["300"]
    allowed_bookinglocation := ["New York City (NYC)"]
    allowed_enforcementlevel := ["MUST"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        allowed_hotelnightcostthreshold[_] == input.hotelnightcostthreshold
    allowed_bookinglocation[_] == input.bookinglocation
    allowed_enforcementlevel[_] == input.enforcementlevel
    }


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_travelclass := ["Business Class"]
    allowed_employeerole := ["Senior Manager"]
    allowed_enforcementlevel := ["MAY"]

    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        allowed_travelclass[_] == input.travelclass
    input.minimumtravelduration >= 6
    allowed_employeerole[_] == input.employeerole
    allowed_enforcementlevel[_] == input.enforcementlevel
    }

# Default: Allow if no violations
allow_default {
    true
}
