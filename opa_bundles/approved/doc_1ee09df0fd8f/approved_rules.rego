package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_1ee09df0fd8f
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_enforcementlevel := ["MUST"]
    allowed_applicableto := ["All users"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.costpernightthreshold > 300
    allowed_enforcementlevel[_] == input.enforcementlevel
    allowed_applicableto[_] == input.applicableto
    }

# Default: Allow if no violations
allow_default {
    true
}
