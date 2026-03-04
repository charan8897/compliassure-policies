package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_162f9aee92ca
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        input.travelclassrestriction == "first-class"
    input.reimbursementcondition == "not reimbursed"
    }

# Default: Allow if no violations
allow_default {
    true
}
