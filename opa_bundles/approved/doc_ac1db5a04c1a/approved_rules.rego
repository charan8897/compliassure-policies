package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_ac1db5a04c1a
# All approved clauses included


    # Rule: C2
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c2_rest := {"allow": true, "reason": "Clause C2: Restriction - YES"} if {
        input.flightclassrestriction == "Economy"
    input.travelscope == "domestic flights"
    }

# Default: Allow if no violations
allow_default {
    true
}
