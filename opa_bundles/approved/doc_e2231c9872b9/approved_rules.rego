package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_e2231c9872b9
# All approved clauses included


    # Rule: C1
    # Intent: LIMIT
    # Action: warn
    # Ambiguous: False
    allow_c1_limi := {"allow": true, "reason": "Clause C1: Limit - STRICT"} if {
        input.maximumcarbonfootprintpertrip <= 500
    input.enforcementstatus == "MUST"
    input.applicableto == "All employees"
    }


    # Rule: C2
    # Intent: EXCEPTION
    # Action: warn
    # Ambiguous: False
    allow_c2_exce := {"allow": true, "reason": "Clause C2: Exception - CONDITIONAL"} if {
        input.traveltype == "international"
    input.minimumtravelduration >= 6
    input.permittedflightclass == "Business class"
    input.applicableto == "Senior Managers"
    input.enforcementlevel == "MAY"
    }

# Default: Allow if no violations
allow_default {
    true
}
