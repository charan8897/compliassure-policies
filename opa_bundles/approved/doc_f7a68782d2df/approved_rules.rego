package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_f7a68782d2df
# All approved clauses included

package policy.ai.data_protection.c1

import future.keywords.if
import future.keywords.in
import future.keywords.every

# Default: allow unless a deny rule fires
default allow := false

# ── Detection rules ───────────────────────────────
# Pattern: check input.prompt (single string field)
deny contains msg if {
    input.prompt
    contains(input.prompt, "Chennai")
}
deny contains msg if {
    input.prompt
    contains(input.prompt, "Bangalore")
}

# Pattern: check input.messages (array field)
deny contains msg if {
    some i
    input.messages[i]
    contains(input.messages[i], "Chennai")
}
deny contains msg if {
    some i
    input.messages[i]
    contains(input.messages[i], "Bangalore")
}

# ── Final allow gate ──────────────────────────────
allow if {
    count(deny) == 0
}

# ── Audit metadata ────────────────────────────────
audit := {
    "policy"     : "policy.ai.data_protection.c1",
    "clause_id"  : "C1",
    "intent"     : "RESTRICTION",
    "severity"   : "CRITICAL",
    "enforcement": "BLOCK",
    "description": "Policy clause C1: RESTRICTION",
    "timestamp"  : time.now_ns(),
}

# Default: Allow if no violations
allow_default {
    true
}
