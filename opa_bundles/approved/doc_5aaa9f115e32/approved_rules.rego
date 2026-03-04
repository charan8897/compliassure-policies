package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-04T06:32:03.943420
# Document ID: doc_5aaa9f115e32
# Only approved clauses included


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        input.minimumtravelduration >= 6
    input.travelclass == "Business"
    input.employeerole == "Senior Manager"
    input.enforcementlevel == "MAY"
    }

# Default: Allow if no violations
allow_default {
    true
}
