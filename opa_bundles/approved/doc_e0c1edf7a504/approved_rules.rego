package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_e0c1edf7a504
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.eligibleroles == "Senior Managers"
    input.durationthreshold == "6 hours"
    input.travelclass == "Business class"
    }


    # Rule: C3
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c3_cond := {"allow": true, "reason": "Clause C3: Conditional Allowance - CONDITIONAL"} if {
        input.applicableunit == "Sales"
    input.budgetincreasepercentage == "20%"
    }

# Default: Allow if no violations
allow_default {
    true
}
