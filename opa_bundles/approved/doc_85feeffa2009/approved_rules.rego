package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_85feeffa2009
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_travelclasseligibility := ["Business class"]
    allowed_internationaltraveldurationthreshold := ["6"]
    allowed_applicableroles := ["Senior Managers"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        allowed_travelclasseligibility[_] == input.travelclasseligibility
    allowed_internationaltraveldurationthreshold[_] == input.internationaltraveldurationthreshold
    allowed_applicableroles[_] == input.applicableroles
    }


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_origincity := ["London"]
    allowed_destinationcity := ["Paris"]
    allowed_recommendedtransportmode := ["train"]

    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        allowed_origincity[_] == input.origincity
    allowed_destinationcity[_] == input.destinationcity
    allowed_recommendedtransportmode[_] == input.recommendedtransportmode
    }

# Default: Allow if no violations
allow_default {
    true
}
