package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_34e6e25bd0e7
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        input.flightclass == "Economy"
    input.travelscope == "domestic flights"
    input.travelregion == "employee's home country"
    input.enforcementstatus == "mandatory"
    }


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        input.travelclasseligibility == "Business class"
    input.minimumflightduration >= 6
    input.eligibleroles == "'Senior Manager' or equivalent"
    }


    # Rule: C3
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c3_advi := {"allow": true, "reason": "Clause C3: Advisory - CONDITIONAL"} if {
        input.travelroute == "London and Paris"
    }

# Default: Allow if no violations
allow_default {
    true
}
