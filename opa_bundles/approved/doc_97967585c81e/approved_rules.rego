package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_97967585c81e
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_costpernightthreshold := ["300"]
    allowed_enforcementlevel := ["MUST"]
    allowed_applicableto := ["All users"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        allowed_costpernightthreshold[_] == input.costpernightthreshold
    allowed_enforcementlevel[_] == input.enforcementlevel
    allowed_applicableto[_] == input.applicableto
    }

# Default: Allow if no violations
allow_default {
    true
}
