package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_4f0913fc5a86
# All approved clauses included


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_budgetbufferpercentage := ["20"]
    allowed_applicableunit := ["Sales"]
    allowed_enforcementlevel := ["SHOULD"]

    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        allowed_budgetbufferpercentage[_] == input.budgetbufferpercentage
                allowed_applicableunit[_] == input.applicableunit
                allowed_enforcementlevel[_] == input.enforcementlevel
    }


    # Rule: C3
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c3_cond := {"allow": true, "reason": "Clause C3: Conditional Allowance - CONDITIONAL"} if {
        input.timethreshold <= 48
    }

# Default: Allow if no violations
allow_default {
    true
}
