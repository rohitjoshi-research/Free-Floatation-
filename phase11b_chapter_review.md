# Phase 11b — Chapter-by-chapter peer review of manuscript rev2 → rev3 (13 Oct 2026)

Reviewer stance: demanding Q1/Q2 reviewer (IEEE Access / T-ITS), adversarial. Every quantitative claim was traced to
`results/*.json` (generated text) or to a cited source (static text). Findings are graded **M** (major: wrong or
unsupported), **m** (minor: clarity, rigour, presentation), **OK** (verified, no change). All M and m items were
corrected in rev3 unless marked *open*.

---
## Front matter (title, abstract, keywords)
| # | Finding | Grade | Resolution |
|---|---|---|---|
| F1 | Title states the finding ("Where, Not When") — consistent with results after the B3r baseline | OK | — |
| F2 | Abstract 216 words (≤ 250); every number generated from numbers.json (8 %, 0 %, 89 %) | OK | verified against `bench_stats.json` |
| F3 | Abstract says "prove" for Prop. 1 — proof is for a heave-only single-compartment model | m | wording kept; scope stated in Prop. 1 and Corollary |
| F4 | Author footnote declares employer; consistent with Declarations | OK | — |

## I. Introduction
| # | Finding | Grade | Resolution |
|---|---|---|---|
| I1 | "77 immersion deaths, all but one drownings, most minor or no injury" | OK | Wintemute 1990 abstract: 57 % ISS 0–1 |
| I2 | "≈400 deaths/yr North America"; ">50/yr, 8.5 % of Dutch road deaths"; "15–63 s"; window lowering stops after water rises | OK | McDonald 2013; SWOV; Giesbrecht 2010; Percher 2026 |
| I3 | "Both families act once… neither manages how long the window stays above water" ignored US 11,046,271 (opens windows still above water) | **M** | sentence corrected to acknowledge window selection at opening |
| I4 | No roadmap paragraph | m | added, with label-based section references |
| I5 | No visual of the problem | m | **new Fig. 1** (EFT concept on two real simulated runs) |

## II. Related Work
| # | Finding | Grade | Resolution |
|---|---|---|---|
| R1 | Text said "IEEE Xplore was not queried and should be re-run before submission" — unacceptable in a submission | **M** | IEEE-restricted search run (no flotation-control study found); sentence replaced with the actual protocol |
| R2 | Table I: AWOS row "window above water" should be *implicit*, not absent | m | corrected, legend for "part/implicit" added to caption |
| R3 | Five references carried VERIFY flags | **M** | all resolved: Giesbrecht 2010 = ASEM 81(8):779–784; AWOS = Giesbrecht, Percher, Brunet et al., Cogent Eng. 4(1):1347990 (2017); US 11,046,271 B2 = Lerner, filed 2018, granted 2021; US 6,333,685 and 6,237,950 = 2001 (USPTO numbering); JIVR review cited by URL (no DOI on landing page) |

## III. Problem Formulation
| # | Finding | Grade | Resolution |
|---|---|---|---|
| P1 | EFT undefined when the margin is never crossed | m | inf ∅ = ∞, capped at 300 s, stated |
| P2 | T_req factor k: benchmark used k = 1, catalogue k = 1.3 — not stated | m | stated explicitly |
| P3 | "Strategy" never defined | m | defined as causal policy from sensor history to station release rates |

## IV. Theory
| # | Finding | Grade | Resolution |
|---|---|---|---|
| T1 | Prop. 1 assumes the compartment is not full | m | assumption added |
| T2 | **Prop. 2 overstated necessity**: multiplying by the Boyle factor at the margin draft gives a *sizing value*, not a necessary bound (gas is less compressed at shallower draft) | **M** | Prop. 2 restated as necessary bound V ≥ m/ρ − V_solid(d*) (1.27 m³ ICE, 1.87 m³ EV), with the compressed sizing value (1.31 / 1.94 m³) moved to a Remark; proof rewritten |
| T3 | Prop. 3 neglects compression and partial submergence | m | stated |
| T4 | Theory never confronted with data | m | **new Fig. 10** and §VII-C: held-float onset falls inside the Prop. 2 band for both vehicles |
| T5 | Per-occupant increment 0.078 m³ = 75 kg/ρ × 1.034 | OK | recomputed |

## V. Method
| # | Finding | Grade | Resolution |
|---|---|---|---|
| M1 | "α* — the same split used by the strongest baseline" is false since B3r was added (FREE uses the *nominal* split of B3) | **M** | corrected |
| M2 | Classifier D2 (wheel unloading) and the inhibit are **not** active in the benchmark plant (no wheels, still water) — undisclosed | **M** | disclosed; benchmark uses D1 only; D2/inhibit evaluated in §VII-F |
| M3 | Algorithm 1 reused n (occupants) for the reserve count and never decremented it | m | renamed n_r, decrement added |
| M4 | No architecture or flow diagram | m | **new Fig. 2** (layered colour architecture) and **Fig. 3** (control flow with inhibit and wait loops), both drawn from the implemented logic in `controller.py` |

## VI. Experimental Setup
| # | Finding | Grade | Resolution |
|---|---|---|---|
| S1 | "B4 at the B3 split" is wrong — B4 has its own tuned split (`tuning.json`: e.g. EV 1.0 m³ 0.70 vs 0.75) | **M** | corrected |
| S2 | Holm family size not stated | m | stated (80 comparisons) |
| S3 | Separation of design-time and evaluation data only described in prose | m | **new Fig. 5** (study design / data separation) |
| S4 | Episode count 8 200 = 2 × 100 × (1 + 10 × 4) | OK | equals 6 600 + 1 600 run rows |

## VII. Results
| # | Finding | Grade | Resolution |
|---|---|---|---|
| E1 | Validation: "trim within 5 %" understates the 0.2 % achieved | m | corrected |
| E2 | Fig. 6 caption omitted that B4 is dashed | m | corrected |
| E3 | Paired comparisons only tabulated | m | **new Fig. 7** forest plot (median and P10 Δ with bootstrap CIs, significance encoded) |
| E4 | Trace figure used the nominal split B3, not the strongest baseline | m | redrawn with B3r; caption discloses that this pre-fixed asymmetric case favours FREE although 100-draw statistics do not |
| E5 | Fault results only in a table | m | **new Fig. 11** grouped bar chart with CIs; numbers and Holm p in caption and text |
| E6 | Box-plot and sweep figures duplicated tabled/text information and crowded the float queue (floats drifted into the references) | m | moved to repository; text keeps the numbers |
| E7 | Held-float claim vague | m | quantified (17–28 % ICE at 1.4 m³; 34–47 % EV at 2.2 m³) and linked to Fig. 11 |
| E8 | Success differences vs B3r — not over-claimed | OK | text says "no meaningful difference"; McNemar non-significant |
| E9 | Fault effects RL/RR: +13.6 / +18.4 s, Holm p ≈ 7–8 × 10⁻⁶ | OK | verified in `fault_stats.json` |

## VIII. Discussion / IX. Conclusion / Declarations
| # | Finding | Grade | Resolution |
|---|---|---|---|
| D1 | Design rules follow from results and theory; no over-claim | OK | — |
| D2 | Ethics statement missing | m | added (no human/animal participants) |
| D3 | Conclusion consistent with abstract and results | OK | — |

## Figures — correctness and presentation audit
| Check | Result |
|---|---|
| Every figure/table cited in text | ✔ (automated check) |
| Numbering follows first citation (IEEE) | ✔ figures 1–12, tables 1–5 (automated check) |
| Figures placed within their chapter | ✔ float barriers before Setup and Discussion |
| Print-size text ≥ 6 pt | ✔ column figures redrawn at 3.5 in, full-width at 7.2 in (1:1) |
| One colour per strategy across all figures, validated palette (CVD ΔE ≥ 9) | ✔ plus marker shapes as secondary encoding |
| Quantitative figures generated from result files; diagrams mirror code | ✔ `figures_paper.py`, `figures_column.py`, `stats_and_figures.py` |
| Bugs found while auditing figures | concept figure first used the plot run's stop threshold (−0.3 m) instead of ε = 0.10 m for EFT → corrected (EFT 28 s, consistent with calibration); legend/label collisions fixed in 6 figures |

## Remaining items for the author (cannot be closed by the reviewer)
1. Employer IP clearance before any disclosure.
2. Add ORCID; compile once with the official IEEEtran class (Overleaf) — the local PDF uses a two-column fallback.
3. Optional: physical validation (Phase 8 plan) before targeting T-ITS.

## Decision simulation (rev3)
IEEE Access: **minor revision** expected (simulation-only evidence is clearly scoped; methodology and statistics are sound).
T-ITS: major revision / reject without scale-model data.

## Rev4 (13 Oct 2026)
Vehicle impact, cost per life saved, regional/industry/military relevance and the realism audit (inflation time, gas source, packaging) are reviewed in `phase15_impact_relevance_realism.md`.
