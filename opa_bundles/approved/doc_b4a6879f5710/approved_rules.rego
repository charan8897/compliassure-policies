package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_b4a6879f5710
# All approved clauses included

package policy.ai.general.c1

import future.keywords.if
import future.keywords.in
import future.keywords.every

# Default: allow unless a deny rule fires
default allow := true

# ── Detection rules ───────────────────────────────
# Pattern: check input.prompt (single string field)
deny contains msg if {
    input.travelclassforinternationaltravel == "Business class"
    input.internationaltraveldurationthreshold > 360 # 6 hours in seconds
    msg := "POLICY VIOLATION [C1]: Conditional Allowance — Action: EVALUATE."
}

# Pattern: check input.messages (array field)
deny contains msg if {
    some i
    input.messages[i].travelclassforinternationaltravel == "Business class"
    input.messages[i].internationaltraveldurationthreshold > 360 # 6 hours in seconds
    msg := "POLICY VIOLATION [C1]: Conditional Allowance — Action: EVALUATE."
}

# ── Final allow gate ──────────────────────────────
allow if {
    count(deny) == 0
}

# ── Audit metadata ────────────────────────────────
audit := {
    "policy"     : "policy.ai.general.c1",
    "clause_id"  : "C1",
    "intent"     : "CONDITIONAL_ALLOWANCE",
    "severity"   : "MEDIUM",
    "enforcement": "WARN",
    "description": "Policy clause C1: CONDITIONAL_ALLOWANCE",
    "timestamp"  : time.now_ns(),
}

# ── Warn rule ────────────────────────────────
warn if {
    input.travelclassforinternationaltravel == "Business class"
    input.internationaltraveldurationthreshold > 360 # 6 hours in seconds
    [{"constraint": "travel.class_permitted", "operator": "APPROVED", "value": "CONDITIONAL"}]
}

package policy.ai.general.c2

import future.keywords.if
import future.keywords.in
import future.keywords.every

# Default: allow unless a deny rule fires
default allow := true

# ── Detection rules ───────────────────────────────
# Pattern: check input.prompt (single string field)
deny contains msg if {
    input.suggestedtravelmode == "Train"
    input.origincity == "London"
    input.destinationcity == "Paris"
    msg := "POLICY VIOLATION [C2]: Advisory — Action: EVALUATE."
}

# ── Final allow gate ──────────────────────────────
allow if {
    count(deny) == 0
}

# ── Audit metadata ────────────────────────────────
audit := {
    "policy"     : "policy.ai.general.c2",
    "clause_id"  : "C2",
    "intent"     : "ADVISORY",
    "severity"   : "MEDIUM",
    "enforcement": "WARN",
    "description": "Policy clause C2: ADVISORY",
    "timestamp"  : time.now_ns(),
}

# ── Warn action ────────────────────────────────
allow if {
    input.suggestedtravelmode == "Train"
    input.origincity == "London"
    input.destinationcity == "Paris"
}

warn := [{"constraint": "allowance.general", "operator": "APPROVED", "value": "CONDITIONAL"}]

# Default: Allow if no violations
allow_default {
    true
}
