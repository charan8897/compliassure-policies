package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_9d86f890f8ce
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_travelclassallowance := ["Business class"]
    allowed_travelscope := ["international destinations"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        allowed_travelclassallowance[_] == input.travelclassallowance
    input.minimumtravelduration >= 6
    allowed_travelscope[_] == input.travelscope
    }


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_travelroute := ["London and Paris"]
    allowed_transportrecommendation := ["train travel"]

    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        allowed_travelroute[_] == input.travelroute
    allowed_transportrecommendation[_] == input.transportrecommendation
    }

# Default: Allow if no violations
allow_default {
    true
}
