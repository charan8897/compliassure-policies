package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_4758e6f60f8c
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_enforcementlevel := ["MAY"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.flightdurationthreshold > 6
                allowed_enforcementlevel[_] == input.enforcementlevel
    }


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_enforcementlevel := ["SHOULD"]

    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        allowed_enforcementlevel[_] == input.enforcementlevel
    }


    # Rule: C3
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_enforcementlevel := ["MUST"]
    allowed_applicabledestinations := ["Singapore"]

    allow_c3_cond := {"allow": true, "reason": "Clause C3: Conditional Allowance - CONDITIONAL"} if {
        allowed_enforcementlevel[_] == input.enforcementlevel
                allowed_applicabledestinations[_] == input.applicabledestinations
    }

# Default: Allow if no violations
allow_default {
    true
}
