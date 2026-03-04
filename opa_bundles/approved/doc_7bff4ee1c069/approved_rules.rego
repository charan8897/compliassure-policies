package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-04T05:27:44.086590
# Document ID: doc_7bff4ee1c069
# Only approved clauses included


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        input.minimumtravelduration >= 6
    input.travelclassallowed == "Business"
    input.employeerole == "Senior Manager"
    input.enforcementlevel == "MAY"
    }

# Default: Allow if no violations
allow_default {
    true
}
