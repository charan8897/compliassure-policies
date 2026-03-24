package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_1ead179bea68
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_travelclassforseniormanagers := ["Business class"]
    allowed_applicableroles := ["Senior Manager roles"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        allowed_travelclassforseniormanagers[_] == input.travelclassforseniormanagers
    input.minimumflightdurationforbusinessclass > 6
    allowed_applicableroles[_] == input.applicableroles
    }


    # Rule: C2
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allowed_hotelbookingcity := ["New York City"]
    allowed_hotelbookingcityabbreviation := ["NYC"]

    allow_c2_rest := {"allow": true, "reason": "Clause C2: Restriction - YES"} if {
        allowed_hotelbookingcity[_] == input.hotelbookingcity
    allowed_hotelbookingcityabbreviation[_] == input.hotelbookingcityabbreviation
    input.maximumhotelcostpernight > 300
    }

# Default: Allow if no violations
allow_default {
    true
}
