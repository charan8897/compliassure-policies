package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_be73a530537c
# All approved clauses included


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        input.applicableunit == "Sales"
    input.bufferpercentage == "20%"
    }

# Default: Allow if no violations
allow_default {
    true
}
