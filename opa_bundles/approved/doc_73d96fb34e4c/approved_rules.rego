package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_73d96fb34e4c
# All approved clauses included


    # Rule: C2
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c2_info := {"allow": true, "reason": "Clause C2: Informational - OK"} if {
        input.applicableto == "all employees of NAGA LIMITED"
    }

# Default: Allow if no violations
allow_default {
    true
}
