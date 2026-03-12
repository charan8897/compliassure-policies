package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_a63e78783790
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.travelclass == "Business class"
    input.minimumtravelduration >= 6
    input.applicableroles == "Senior Managers"
    input.enforcementlevel == "MAY"
    }


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        input.travelroute == "London to Paris"
    input.enforcementlevel == "SHOULD"
    }

# Default: Allow if no violations
allow_default {
    true
}
