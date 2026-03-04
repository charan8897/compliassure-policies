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

# Default: Allow if no violations
allow_default {
    true
}
