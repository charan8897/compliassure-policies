package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-03T11:32:07.811603
# Document ID: doc_4f312400d9ef
# Only approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.travelclass == "Business class"
    input.minimumtravelduration >= 6
    input.durationmeasurement == "departure to arrival"
    }

# Default: Allow if no violations
allow_default {
    true
}
