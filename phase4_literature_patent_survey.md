# Phase 4 — Literature and patent survey (rev1, 2026-10-13)

## 1. Search protocol
| Item | Value |
|---|---|
| Date of search | 12–13 Oct 2026 |
| Paper sources | Web search over PubMed/PMC, journal sites, ESV proceedings (NHTSA), Euro NCAP CDN, preprints.org, Springer/IDEAS. IEEE Xplore and Google Scholar not directly queryable from the workspace (REQUIRES a manual repeat by the author). |
| Patent sources | Google Patents (US, CN, EP, WO), USPTO full-text PDFs |
| Query families | (1) vehicle submersion/immersion + escape/egress/drowning; (2) vehicle flotation/buoyancy + airbag/inflatable; (3) submergence detection + window opening; (4) staged/sequential inflation + attitude/water level; (5) helicopter emergency flotation (analogous domain); (6) vehicles in floodwater stability; (7) Euro NCAP submergence |
| Window | In depth 2024–2026; seminal older work included when cited by recent work |
| Inclusion | Addresses occupant survival or vehicle buoyancy during water entry, or submergence sensing/actuation |
| Limits | Chinese utility-model literature only sampled; no CNIPA/DEPATIS/Espacenet full-text search; no claim-chart by a patent attorney |

## 2. Key verified sources

### Epidemiology and human factors
- [R1] G. J. Wintemute et al., "Death resulting from motor vehicle immersions…", Am. J. Public Health, 80(9):1068–1070, 1990, doi:10.2105/ajph.80.9.1068. 77 deaths; most with ISS 0–1 (minor), i.e. drowning, not trauma.
- [R2] G. K. McDonald, G. G. Giesbrecht, "Vehicle submersion: a review of the problem, associated risks, and survival information," Aviat. Space Environ. Med., 84(5):498–510, 2013, doi:10.3357/ASEM.3151.2013. ≈400 deaths/yr North America; Flotation Phase defined as water impact → water at bottom of side windows; 3 occupants + child manikin out in 53 s; 63 s Flotation Phase example; heavy truck submerged in 3–4 s.
- [R3] G. G. Giesbrecht, G. K. McDonald, "My car is sinking: automobile submersion, lessons in vehicle escape," Aviat. Space Environ. Med., 81(8), 2010. Floating 15–63 s before water reaches side-window bottom. DOI REQUIRES SOURCE VERIFICATION.
- [R4] SWOV fact sheet "Submerged vehicle crashes" (NL): >50 deaths/yr = 8.5 % of Dutch road deaths; ~70 % drowning.
- [R5] Z. Asgari Tapeh, A. Darvishpour, "Vehicle submersion: a review of risk factors and preventive efforts," J. Inj. Violence Res., 16(3), 2024 (online 7 Oct 2025). Systematic review 2012–2024, 29 articles; categories incl. "safety enhancements". DOI REQUIRES SOURCE VERIFICATION.
- [R6] "Overview of vehicle submersion in natural waters: challenges, associated risk factors, escape strategies, and general recommendations," PMC12583966 (2025). Full citation REQUIRES SOURCE VERIFICATION (page behind bot check).
- [R7] S. Percher et al. (incl. G. Giesbrecht), "Post-Incident Survivability and Emergency Egress: Consumer-Focused Approaches to In-Vehicle Fire and Submersion Safety," 28th ESV Conf., paper ESV26-243, 2026. Secondary synthesis; flotation ≈1 min; windows cannot be lowered once water reaches ≈¼ window height.
- [R8] S. Glassey, "Vehicle in water rescue: will laminated glass be the death of us?", Preprints 2024, doi:10.20944/preprints202406.1527.v1. Laminated side glass (FMVSS 226) defeats window breaking.

### Regulation / consumer testing
- [R9] Euro NCAP, "Rescue & Extrication Test and Assessment Protocol," v1.1, Sept 2025, §3.2.6 Vehicle submergence: windows must operate for ≥2 min from water entry (T0 = straps slacken and vehicle floats); with automatic lowering, side windows lowered automatically within 2 min; 3 points (window route) or 1 point (tool route); tool route unavailable with laminated side glass.

### Engineering countermeasures (papers)
- [R10] G. G. Giesbrecht et al., Automatic Window Opening System (AWOS) field tests: opens windows only within ±20° roll, ±30° pitch with 2 s delay; tested on two cars and one SUV; windows opened immediately when upright. Journal citation REQUIRES SOURCE VERIFICATION (SWOV record only).
- [R11] E. H. H. Al-Qadami et al., "Full-scale experimental investigations on the response of a flooded passenger vehicle under subcritical conditions," Nat. Hazards, 110(1):325–348, 2022, doi:10.1007/s11069-021-04949-6. Still-water instability at ≈0.40 m depth, ≈11 kN buoyancy; 90° to flow most critical.

### Analogous domain
- [R12] SKYbrary, "Helicopter Emergency Flotation Systems": floats often damaged at impact; asymmetric automatic inflation contributed to capsize (2018 East River AS350); sea-state limits.
- [P10] US9315263B2 (Airbus Helicopters, 2016): automatic float triggering; ≥2 of ≥3 immersion sensors must agree; all bags inflate at once.

## 3. Patent landscape
| ID | Owner / status | What it claims | Staged? | Uses measured waterline/attitude for allocation? | Window coordination? |
|---|---|---|---|---|---|
| P1 US7287482B1 (2007) | individual | bags in housings under vehicle, inflate around tyres | no | no | no |
| P2 US8695521B2 (2014) | individual | permanent foam / inflatable fender elements | no | no | no |
| P3 US9290144B1 (2016, lapsed 2020) | individual | immersion sensor + auxiliary hazard sensor (pressure, gyro, flow…) → fill chambers; housing distinguishes still/flowing water | no (single event) | no (pressure used for detection only) | no |
| P4 US10953828B2 (2021) | — | networked flotation devices, manual pump option | no | no | no |
| P5 CN106274774A (Changan, 2017; rejected 2020) | OEM | level sensor at mid-window height on A-pillar + front/rear (2 or 4) airbags; deploy when speed = 0 and water detected | no | level used as trigger only | no |
| P6 CN104057905A (2014; withdrawn) | company | sustained water pressure → four-corner underbody airbags + distress call | no | no | no |
| P7 CN206551988U (2017; lapsed 2026) | individual | roof-box airbag with N₂ bottle and beacon | no | no | no |
| P8 US9206637B2 / EP2847407B1 (KAUST/AWOS) | univ./start-up | water collector sensor + orientation gate → open all windows | n/a | attitude gates window opening | yes (windows only) |
| P9 US6333685B1, US10899297B2, JP H10-292731, JP 2000-204843 | Tier-1/OEM | submergence detection electrodes; lower window on water detection | n/a | no | yes (windows only) |
| P10 US9315263B2 (Airbus Hel.) | aerospace | redundant immersion sensors → inflate all floats | no | no | n/a |
| P11 US6237950B1 | airbag | staged (dual-stage) inflator for occupant airbags | yes (generic) | no | n/a |

## 4. Positioning table (approach × capability)
| Capability | P1/P2/P4 | P3 | P5/P6 | P8/P9 (AWOS) | Helicopter EFS | **FREE (this work)** |
|---|---|---|---|---|---|---|
| Detect water entry | –/– | ✓ | ✓ | ✓ | ✓ | ✓ (not novel) |
| Reject splash / flowing water | – | ✓ | partial (speed=0) | ✓ (splash) | ✓ (2-of-3 voting) | ✓ (not novel) |
| Add buoyancy | ✓ | ✓ | ✓ | – | ✓ | ✓ (not novel) |
| Open windows automatically | – | – | – | ✓ | – | ✓ (not novel; Euro NCAP-rewarded) |
| Multi-point hydrostatic **waterline estimation** at the egress sills | – | – | single level switch | – | – | ✓ |
| **Staged** gas release held in reserve | – | – | – | – | – | ✓ |
| Reserve **allocated per station by measured sill freeboard** (closed loop) | – | – | – | – | – | ✓ |
| Objective = time the opened egress window stays above water (EFT) | – | – | – | implicit | – | ✓ |
| Inhibit flotation in moving water | – | (detects flow) | – | – | – | ✓ (not novel alone) |

## 5. What is NOT novel (stated explicitly)
1. Detecting submergence (P3, P6, P8, P9).
2. Vehicle flotation by inflatable bags or foam, including four-corner placement (P1, P2, P5, P6).
3. Water-level sensing at mid-window height used as a deployment trigger (P5).
4. Automatic window lowering on water entry with orientation gating (P8, R10) — now rewarded by Euro NCAP (R9).
5. Multi-stage inflators as hardware (P11).
6. Using pressure/flow sensors to distinguish hazardous flowing water (P3).
7. Redundant sensor voting before inflation (P10).

## 6. Novelty decision
**Decision: proceed, with a narrowed claim.** No paper or patent found in this search closes the loop on the *freeboard of the egress sills*: all flotation prior art fires once on a binary trigger, and all window prior art opens windows without managing how long the opened window stays above water. The combination is plausibly non-obvious because the helicopter domain documents asymmetric inflation as a *failure* mode (R12), i.e. practitioners treat symmetric all-at-once inflation as the safe default.

**Rewritten novelty claim (survives P3, P5, P8):**
> We formulate post-entry vehicle flotation as a freeboard-regulation problem whose objective is the time the automatically-lowered egress window stays above the waterline (Egress Freeboard Time, EFT), and propose FREE, a staged buoyancy controller that holds part of the gas in reserve and allocates it per station using a multi-point hydrostatic estimate of the sill waterline. To our knowledge (search protocol §1) no published work or patent uses measured sill freeboard as the controlled variable for staged vehicle flotation.

**Novelty risk: MODERATE.** (a) Chinese utility models not exhaustively searched; (b) an examiner may argue P5 (level sensor) + P11 (staged inflator) makes staging obvious; (c) the closed-loop law itself is simple. The scientific contribution therefore rests on (i) the problem formulation and model-independent metric linked to Euro NCAP §3.2.6, (ii) the controller architecture, and (iii) evidence of when staging helps and when it does not.

## 7. IP / disclosure risk note
- Publishing (preprint, conference, LinkedIn, the demo video) is a novelty-destroying disclosure in most jurisdictions (EPC Art. 54; the US gives a 1-year grace period, Europe none).
- The author is employed by a Tier-1 supplier active in vehicle electronics; employee-invention law (German ArbnErfG) may apply even to self-motivated research related to the employer's field. **Clear with Valeo IP / legal before any disclosure** and decide whether a patent filing should precede publication.
- Do not include employer data, tools, or confidential knowledge; declare affiliation and conflict of interest.

## 8. Latest incidents (for motivation and the video; verified 13 Oct 2026)
| Date | Place | Event | Source |
|---|---|---|---|
| 29 Sep 2026 | Sunderland, UK | Car entered the River Wear; three teenagers died, one occupant escaped | ITV News Tyne Tees, 29 Sep 2026 |
| 17 Sep 2026 | Olivella (Barcelona), Spain | Car swept away in a flooded seasonal stream; driver died | Euro Weekly News, 17 Sep 2026 |
| 25 May 2026 | Petal, Mississippi, USA | SUV swept away by flash flooding in a parking lot; driver died | WDAM / Gray News via WSAW, 26 May 2026 |
| 16 Mar 2026 | Sausalito, California, USA | Car entered yacht-harbour water; one escaped, driver died | PEOPLE via AOL |

Two of four are moving-water floods, the case where FREE must *inhibit* flotation. One of four (Sunderland) is the still-water river entry FREE targets.

---
## rev2 addendum (13 Oct 2026, after Phase 7 and internal review)

### Additional prior art found during review
| ID | What it claims | Effect on novelty |
|---|---|---|
| US 11,046,271 "Vehicle drowning sensing system" | two-sensor submersion detection with a learned baseline; adjusts windows, doors, seat belts, motor; description: open only windows **not yet submerged**, after interior/exterior pressure equalisation; countdown to occupants | Prior art for window selection by water level and for occupant countdown HMI. No buoyancy. FREE's claim narrowed accordingly. |
| US 2017/0283017 A1 "Deployable float safety system" (Hogshead) | housings on outer wall, inflatable floats from a tank, water-entry switch, pressure regulator | Another single-shot flotation; no staging or freeboard control. |
| AWOS journal paper: Cogent Engineering 4 (2017), doi:10.1080/23311916.2017.1347990 | field tests of automatic window opening | Confirms R10; authors to be verified. |

### Revised novelty decision (supersedes §6 framing)
The simulation evidence (benchmark vs a robustly tuned one-shot split B3r, fault sweeps) shows that the closed-loop
freeboard controller does **not** outperform a well-designed open-loop system except when a rear flotation station fails.
Claiming the controller as an improvement would therefore be unsupported. The paper is reframed:

> **Novelty statement (rev2):** We introduce a freeboard formulation of post-entry vehicle flotation with a ground-truth
> egress metric (EFT) linked to Euro NCAP §3.2.6, prove that earlier buoyancy release is pointwise better in heave and
> derive a held-float gas threshold, and show in a 3-DOF truth-simulator study (calibrated only to the published floating phase) that a robustly tuned,
> front-biased one-shot split captures nearly all attainable benefit — so closed-loop sensor-steered staging, the natural
> "smart" design, is justified only for fault tolerance. To our knowledge, no prior paper or patent evaluates flotation by
> how long an opened window stays usable or compares staged and one-shot flotation on that basis.

Novelty risk after rev2: **low–moderate** for the formulation/theory/design-rule contribution (no prior art found);
the controller itself is no longer the claimed contribution.

### IP note (rev2)
A negative result for the controller reduces the patent value of FREE itself; the design rules (front-biased robust split,
held-float sizing, front-station redundancy) may still be of commercial interest. The employer-clearance requirement is unchanged.
