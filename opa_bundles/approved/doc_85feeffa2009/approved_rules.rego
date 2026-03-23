package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_85feeffa2009
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allowed_flightdurationthreshold := ["6"]
    allowed_travelclasseligibility := ["Business class"]
    allowed_eligibleroles := ["Senior Manager"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        allowed_flightdurationthreshold[_] == input.flightdurationthreshold
    allowed_travelclasseligibility[_] == input.travelclasseligibility
    allowed_eligibleroles[_] == input.eligibleroles
    }


    # Rule: C4
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_bookingtimeconstraint := ["48"]
    allowed_justificationrequirement := ["REQUIRED"]

    allow_c4_cond := {"allow": true, "reason": "Clause C4: Conditional Allowance - CONDITIONAL"} if {
        allowed_bookingtimeconstraint[_] == input.bookingtimeconstraint
    allowed_justificationrequirement[_] == input.justificationrequirement
    }

# Default: Allow if no violations
allow_default {
    true
}
