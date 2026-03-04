package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_98bbbe0caea6
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.hotelbookingcity == "New York City (NYC)"
    input.maximumcostpernight <= 300
    input.enforcementlevel == "MUST"
    input.policysource == "Policy Statement 1"
    input.exceptionpermitted == "No"
    }

# Default: Allow if no violations
allow_default {
    true
}
