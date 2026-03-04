package data.travel_policy
# Approved policy rules for travel_policy
# Generated: 2026-03-04T06:13:37.393509
# Document ID: doc_1f8f2e54b0b4
# Only approved clauses included


    # Rule: C2
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c2_rest := {"allow": true, "reason": "Clause C2: Restriction - YES"} if {
        input.hotellocation == "New York City (NYC)"
    input.maximumhotelcostpernight <= 300
    }

# Default: Allow if no violations
allow_default {
    true
}
