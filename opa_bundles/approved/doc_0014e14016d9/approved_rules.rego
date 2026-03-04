package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_0014e14016d9
# All approved clauses included


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        input.travelclass == "Business Class"
    input.minimumtravelduration >= 6
    input.employeerole == "Senior Manager"
    input.enforcementlevel == "MAY"
    }

# Default: Allow if no violations
allow_default {
    true
}
