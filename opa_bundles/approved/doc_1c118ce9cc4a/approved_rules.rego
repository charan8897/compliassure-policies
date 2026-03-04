package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-04T04:11:55.044994
# Document ID: doc_1c118ce9cc4a
# Only approved clauses included


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

# Default: Allow if no violations
allow_default {
    true
}
