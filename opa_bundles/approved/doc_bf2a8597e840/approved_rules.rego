package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_bf2a8597e840
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.bookingtype == "hotel"
    input.bookinglocation == "NYC"
    input.pricepernightthreshold == "300 USD"
    }


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        input.bookingtype == "flight"
    input.destinationcity == "Singapore"
    input.travelarrangementpriority == "preferred partners"
    input.policysource == "Policy Statement 2"
    }

# Default: Allow if no violations
allow_default {
    true
}
