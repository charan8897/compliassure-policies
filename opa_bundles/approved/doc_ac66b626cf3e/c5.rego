package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-03T09:29:43.105639
# Document ID: doc_ac66b626cf3e
# Only approved clauses included


    # Rule: C5
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c5_rest := {"allow": true, "reason": "Clause C5: Restriction - YES"} if {
        input.traveladvancesettlementdeadline == "2 days"
    }

# Default: Allow if no violations
allow_default {
    true
}
