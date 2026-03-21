package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_29c2134415e2
# All approved clauses included


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_travelclassauthorization := ["Business Class"]
    allowed_authorizedroles := ["Senior Managers"]
    allowed_traveltype := ["international travel"]

    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        allowed_travelclassauthorization[_] == input.travelclassauthorization
    allowed_authorizedroles[_] == input.authorizedroles
    allowed_traveltype[_] == input.traveltype
    input.minimumtravelduration >= 6
    }

# Default: Allow if no violations
allow_default {
    true
}
