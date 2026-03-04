package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_8009390b468b
# All approved clauses included


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        input.budgetbufferpercentage == "20%"
    input.bufferapplicability == "all travel expenses"
    input.travelbudgetincreasepercentage == "20%"
    }

# Default: Allow if no violations
allow_default {
    true
}
