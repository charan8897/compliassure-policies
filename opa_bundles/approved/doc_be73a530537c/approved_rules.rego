package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_be73a530537c
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.travelclass == "Business"
    input.durationthreshold == "6 hours"
    input.traveltype == "International"
    input.applicableroles == "Senior Managers"
    }

# Default: Allow if no violations
allow_default {
    true
}
