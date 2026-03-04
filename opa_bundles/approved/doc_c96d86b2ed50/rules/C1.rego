package data.travel_policy
# Approved rule for clause C1
# Document ID: doc_c96d86b2ed50


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.budgetbufferpercentage == "20%"
    input.bufferapplicability == "all travel expenses"
    input.sourceparagraph == "Paragraph 1"
    input.applicableroles == "Sales unit personnel"
    }

# Default: Allow if no violations
allow_default {
    true
}
