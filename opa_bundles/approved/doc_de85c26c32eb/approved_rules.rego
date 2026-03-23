package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_de85c26c32eb
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_travelclassforseniormanagers := ["Business class"]
    allowed_travelscope := ["international flights"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        allowed_travelclassforseniormanagers[_] == input.travelclassforseniormanagers
    input.minimumflightdurationforbusinessclass >= 6
    allowed_travelscope[_] == input.travelscope
    }


    # Rule: C3
    # Intent: LIMIT
    # Action: warn
    # Ambiguous: False
    allowed_hotelbookingcity := ["New York City (NYC)"]

    allow_c3_limi := {"allow": true, "reason": "Clause C3: Limit - STRICT"} if {
        allowed_hotelbookingcity[_] == input.hotelbookingcity
    input.maximumhotelbookinglimitpernight <= 300
    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_route := ["London and Paris"]
    allowed_preferredtravelmethod := ["train"]
    allowed_source := ["2"]

    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        allowed_route[_] == input.route
    allowed_preferredtravelmethod[_] == input.preferredtravelmethod
    allowed_source[_] == input.source
    }

# Default: Allow if no violations
allow_default {
    true
}
