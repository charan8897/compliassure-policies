package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_a8190de4ef03
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allowed_travelmode := ["train"]
    allowed_origincity := ["London"]
    allowed_destinationcity := ["Paris"]
    allowed_enforcementlevel := ["MUST"]
    allowed_applicableto := ["All travelers"]

    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        allowed_travelmode[_] == input.travelmode
    allowed_origincity[_] == input.origincity
    allowed_destinationcity[_] == input.destinationcity
    allowed_enforcementlevel[_] == input.enforcementlevel
    allowed_applicableto[_] == input.applicableto
    }

# Default: Allow if no violations
allow_default {
    true
}
