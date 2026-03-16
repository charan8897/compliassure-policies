package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_2b543ef11481
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.flightdurationthreshold == "6 hours"
    input.travelclasseligibility == "Business class"
    input.employeeleveleligibility == "Senior Managers"
    }


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        input.routecities == "London, Paris"
    }

# Default: Allow if no violations
allow_default {
    true
}
