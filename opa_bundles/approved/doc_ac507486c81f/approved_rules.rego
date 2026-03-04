package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-04T07:03:22.331415
# Document ID: doc_ac507486c81f
# Only approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.travelclassforseniormanagers == "Business class"
    input.minimumflightdurationforbusinessclass >= 6
    input.applicableroles == "Senior Manager roles"
    }

# Default: Allow if no violations
allow_default {
    true
}
