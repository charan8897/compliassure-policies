package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_4211a7dddf35
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.travelclassforseniormanagers == "Business class"
    input.minimumflightdurationforbusinessclass >= 6
    input.applicableroles == "Senior Manager roles"
    }


    # Rule: C2
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c2_rest := {"allow": true, "reason": "Clause C2: Restriction - YES"} if {
        input.hotelbookingcity == "New York City"
    input.hotelbookingcityabbreviation == "NYC"
    input.maximumhotelcostpernight <= 300
    }

# Default: Allow if no violations
allow_default {
    true
}
