package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_3d9fbf3b0f13
# All approved clauses included


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        input.travelclasseligibility == "Senior Managers"
    input.internationaltravelminimumduration == "6 hours"
    input.applicableroles == "'Senior Manager'"
    input.travelexpensesource == "Travel Expenses"
    }

# Default: Allow if no violations
allow_default {
    true
}
