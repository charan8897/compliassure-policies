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


    # Rule: C3
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allowed_hotelcostlimit := ["300"]
    allowed_costlimitunit := ["per night"]
    allowed_applicablecity := ["New York City"]
    allowed_enforcementlevel := ["MUST"]

    allow_c3_cond := {"allow": true, "reason": "Clause C3: Conditional Allowance - CONDITIONAL"} if {
        allowed_hotelcostlimit[_] == input.hotelcostlimit
    allowed_costlimitunit[_] == input.costlimitunit
    allowed_applicablecity[_] == input.applicablecity
    allowed_enforcementlevel[_] == input.enforcementlevel
    }

# Default: Allow if no violations
allow_default {
    true
}
