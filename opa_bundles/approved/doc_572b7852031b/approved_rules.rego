package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_572b7852031b
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allowed_policyid := ["02"]

    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        allowed_policyid[_] == input.policyid
    }


    # Rule: C10
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c10_cond := {"allow": true, "reason": "Clause C10: Conditional Allowance - CONDITIONAL"} if {
        input.minimumoutofficeduration > 6
    }

# Default: Allow if no violations
allow_default {
    true
}
