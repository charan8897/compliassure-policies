package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_4f0913fc5a86
# All approved clauses included


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_budgetbufferpercentage := ["20"]
    allowed_applicableunit := ["Sales"]

    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        allowed_budgetbufferpercentage[_] == input.budgetbufferpercentage
                allowed_applicableunit[_] == input.applicableunit
    }

# Default: Allow if no violations
allow_default {
    true
}
