package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_39b65a667e70
# All approved clauses included


    # Rule: C2
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c2_rest := {"allow": true, "reason": "Clause C2: Restriction - YES"} if {
        input.travelclassrestriction == "first-class"
    input.reimbursementstatusforrestrictedtravel == "not reimbursed"
    }

# Default: Allow if no violations
allow_default {
    true
}
