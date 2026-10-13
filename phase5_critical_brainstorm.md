# Phase 5 — Critical brainstorm: failure modes and responses (rev1)

Legend: **D** = design response built into FREE / simulated in Phase 6–7; **L** = stated limitation (not solved).

| # | Failure mode / challenge | Consequence | Response |
|---|---|---|---|
| 1 | Hydrostatic sensor noise, bias, drift | Wrong waterline estimate → reserve sent to wrong station | **D**: ≥4 sensors, least-squares plane fit, median filtering; noise σ and bias swept in Phase 7 |
| 2 | Sensor damaged or blocked by impact debris | Missing corner | **D**: plane fit tolerates one missing sensor (3 points define a plane); fallback to IMU-only symmetric staging |
| 3 | Sensor latency / ECU cycle | Charges fire late | **D**: latency swept 0–1 s |
| 4 | Gas generator / bladder inflation lag | Buoyancy arrives late during fast nose-down phase | **D**: first-order inflation (τ) in the truth simulator; ≥50 % fired at detection |
| 5 | Gas compression with depth (Boyle) | Less buoyancy than nominal | **D**: modelled in the truth simulator; the controller model ignores it (mismatch on purpose) |
| 6 | Bladder puncture at impact | Lost station | **D**: per-station failure injected in robustness test; closed loop can re-route reserve; **L**: total loss not covered |
| 7 | Steep nose-first entry / inverted landing | Sills underwater immediately; windows must not open inverted (AWOS ±20°/±30° gate) | **D**: entry attitudes in the scenario catalogue; window gate kept; **L**: inverted landing out of scope |
| 8 | Roll from asymmetric leaks (side impact, broken window) | One side's sills sink first | **D**: four-corner allocation (roll channel) vs. front/rear-only ablation |
| 9 | Multiple interacting factors (occupant load, luggage, EV pack) | CG/mass differ from nominal | **D**: controller designed on nominal; evaluated on perturbed mass/CG/leak (model mismatch) |
| 10 | Unknown leak paths (door seals, HVAC, pass-throughs) | Flooding faster than modelled | **D**: leak area ×0.5–3 in the robustness sweep; **L**: absolute EFT uncalibrated until tank tests |
| 11 | Moving water (flash flood, river current) | Buoyant car is carried away — worse outcome (2 of 4 recent incidents) | **D**: inhibit branch (drift/flow cue); **L**: drift dynamics not simulated, so the classifier is evaluated on synthetic signals only |
| 12 | False activation on road (splash, fording, car wash) | Bladders deploy at speed → loss of control (highest severity) | **D**: AND of (multi-sensor submergence ≥ threshold for ≥ t_min) AND (loss of ground support / vertical-acceleration signature) AND speed gate; synthetic false-activation test; **L**: real FAR needs fleet data |
| 13 | Fording within the vehicle's wading depth | Must not deploy | **D**: threshold above wading depth; fording cases in the synthetic set |
| 14 | Ice break-through / heavy vehicles | Sinks in seconds (R2: 3–4 s) | **L**: out of ODD |
| 15 | 12 V net loss in water | Windows and ECU stop | **D**: dedicated capacitor reserve, as Euro NCAP's ≥2 min window requirement implies; **L**: not simulated electrically |
| 16 | HV battery in water (EV) | Shock/thermal risk | **D**: pyro-fuse disconnect at detection; **L**: electro-chemistry out of scope |
| 17 | Night / cold water / panic (human factors) | Egress slower than the measured 53 s | **D**: requirement time T_req per occupant count, inflated for night/cold (assumed factors); HMI voice sequence (Seatbelts → Windows → Children → Out); **L**: no human trials |
| 18 | Laminated side glass | Cannot break window; automatic lowering is the only exit | **D**: argument for FREE + automatic windows (R8, R9) |
| 19 | Packaging ≈1.2–2 m³ of bladders + generators | Cost, mass, crash interaction | **L**: feasibility study needed; Phase 7 reports gas needed for a target EFT so packaging can be sized |
| 20 | Inflator toxicity / temperature (pyrotechnic gas) | Burns, cabin gas | **D**: bladders outside the cabin; cool-gas (stored N₂/Ar hybrid) option; **L**: not modelled |
| 21 | Functional safety (ISO 26262) | Unintended deployment (high ASIL, assumed), missed deployment (lower) | **D**: HARA sketch in paper; separate deployment ECU path with plausibility checks; **L**: no formal ASIL assignment |
| 22 | SOTIF (ISO 21448) | Misclassification in unknown water conditions | **D**: triggering-condition catalogue = scenario catalogue; known-unsafe set = moving water |
| 23 | Rescue-service interaction | Inflated bags obstruct rescuers / tow | **D**: rescue sheet entry; deflation valves; **L**: not evaluated |
| 24 | Regulatory status | No UN-ECE rule for vehicle flotation | **L**: discuss Euro NCAP §3.2.6 as the closest incentive |

## Decisions carried into Phase 6
- Truth simulator ≠ controller model: 3-DOF dynamics (heave, pitch, roll), tapered hull, added mass and damping, Boyle compression, inflation lag, sensor noise/latency, asymmetric leaks.
- Primary metric on simulator ground truth: EFT = first time the lowest of the four door-window sills is within 0.10 m of the free surface.
- Secondary: P(EFT ≥ T_req), gas fired, peak roll/pitch.
- Baselines in best configuration: B0 (automatic windows only), B2 symmetric one-shot (P3/P5-style), B3 best fixed split tuned on the *truth* simulator, B4 passive foam at the same volume with no latency (P2-style upper reference).
- Ablations: A1 FREE without terminal guard; A2 FREE front/rear only (no roll channel); A3 FREE with perfect (noise-free) sensing.
