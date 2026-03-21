package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_29c2134415e2
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allowed_enforcementlevel := ["MUST"]
    allowed_applicableto := ["All employees"]
    allowed_transportationmode := ["train"]
    allowed_origincities := ["London, Paris"]
    allowed_destinationcities := ["London, Paris"]

    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        allowed_enforcementlevel[_] == input.enforcementlevel
    allowed_applicableto[_] == input.applicableto
    allowed_transportationmode[_] == input.transportationmode
    allowed_origincities[_] == input.origincities
    allowed_destinationcities[_] == input.destinationcities
    }


    # Rule: C3
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allowed_enforcementlevel := ["MUST"]
    allowed_applicableto := ["All employees"]
    allowed_transportationmethod := ["train travel"]
    allowed_origincities := ["London, Paris"]
    allowed_destinationcities := ["London, Paris"]

    allow_c3_rest := {"allow": true, "reason": "Clause C3: Restriction - YES"} if {
        allowed_enforcementlevel[_] == input.enforcementlevel
    allowed_applicableto[_] == input.applicableto
    allowed_transportationmethod[_] == input.transportationmethod
    allowed_origincities[_] == input.origincities
    allowed_destinationcities[_] == input.destinationcities
    }

# Default: Allow if no violations
allow_default {
    true
}
