package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_02c1f47acc3d
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        input.policyid == "HR/Pol/02/2014"
    input.companyname == "NAGA LIMITED"
    }

# Default: Allow if no violations
allow_default {
    true
}
