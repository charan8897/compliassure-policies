package data.travel_policy
# Approved rule for clause C2
# Document ID: doc_c96d86b2ed50


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        input.enforcementlevel == "SHOULD"
    input.source == "Paragraph 2"
    }

# Default: Allow if no violations
allow_default {
    true
}
