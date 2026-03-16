package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_fa5b088c7c7e
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        input.travelclasseligibility == "Senior Managers"
    input.internationaltraveldurationthreshold == "6 hours"
    input.permittedtravelclass == "Business class"
    input.applicableroles == "Senior Manager roles"
    }


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        input.travelroute == "London and Paris"
    input.suggestedmodeoftransport == "train"
    }


    # Rule: C3
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c3_cond := {"allow": true, "reason": "Clause C3: Conditional Allowance - CONDITIONAL"} if {
        true
    }

# Default: Allow if no violations
allow_default {
    true
}
