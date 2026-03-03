package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-03T06:43:29.108490
# Document ID: doc_6924d20623b4
# Only approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.budgetbufferpercentage == "20%"
    input.bufferapplicability == "all travel expenses"
    input.buffercalculationbasis == "standard travel budget"
    input.applicableroles == "Sales unit personnel"
    input.sourceparagraph == "Paragraph 1"
    }

# Default: Allow if no violations
allow_default {
    true
}
