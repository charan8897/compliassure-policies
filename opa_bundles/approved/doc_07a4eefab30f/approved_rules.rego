package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_07a4eefab30f
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        input.destinationcity == "Singapore"
    input.policysource == "Policy Statement 1"
    }

# Default: Allow if no violations
allow_default {
    true
}
