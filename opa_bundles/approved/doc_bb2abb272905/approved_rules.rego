package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_bb2abb272905
# All approved clauses included


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        input.bookingcutofftime == "48 hours"
    input.justificationrequirement == "mandatory"
    }

# Default: Allow if no violations
allow_default {
    true
}
