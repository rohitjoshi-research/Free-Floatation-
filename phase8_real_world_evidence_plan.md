# Phase 8 — Real-world evidence and capture plan (rev1)

## 1. What real material exists today, and what it can and cannot show
| Material | Can support | Cannot support |
|---|---|---|
| Published instrumented submersions: floating phase 15–63 s, 53 s egress for 3 adults + child, heavy truck 3–4 s (R2, R3) | Calibration target for the no-system floating time (used once, ICE only); egress-time anchor for T_req | Leak areas, compartment flooding sequence, EV behaviour, bladder dynamics |
| AWOS crane tests: windows open immediately when upright; gate ±20° roll / ±30° pitch (R10) | Feasibility of automatic window opening; the orientation gate used here | Any flotation effect |
| Euro NCAP v1.1 §3.2.6 (R9) | The regulatory relevance of a ≥2 min operable-window horizon | Any vehicle performance |
| Full-scale flood tests: still-water instability ≈0.40 m (R11) | Plausible fording-rejection depth band (0.1–0.5 m) for the classifier test | Entry into deep water |
| Recent news reports (Phase 4 §8) | Motivation; the share of moving-water cases | Any quantitative claim (n = 4, selection-biased) |
| **No author-owned physical data** | — | Everything in Sec. 6–7 of the paper is simulation |

**Consistency check against published data (not a validation):** the calibrated plant predicts an EV floating time of ≈21 s (ICE calibrated to 40 s); both lie inside the published 15–63 s range. The EV value has not been compared with any measured EV submersion, because none was found.

## 2. Validation plan

### Stage A — 1:10 Froude-scaled tank tests (low cost, 3 months)
- **Model:** 3D-printed shell (L ≈ 0.46 m) with three compartments, calibrated orifices (leak areas scaled by λ² = 1/100), ballast for mass and CG (λ³), 4 latex bladders filled by solenoid valves from a CO₂ cartridge manifold.
- **Scaling:** Froude similarity, so times scale by √λ ≈ 0.316 (a 40 s floating phase ↔ 12.6 s in the model). Orifice discharge at model Reynolds numbers (≈10³–10⁴) needs a C_d calibration per orifice, done separately in a drain test.
- **Instrumentation:** 4 MS5837-class pressure sensors (≈0.2 mbar ≈ 2 mm water), 9-axis IMU, 2 cameras (side, top) at 60 fps with fiducials on the sills; ground-truth waterline from video (sill-marker tracking) is independent of the pressure sensors (needed for the model-independent metric).
- **Sync:** single microcontroller timestamping of sensors and valve commands; camera sync by LED flash.
- **Scenarios:** entry pitch 0/15/30°, roll 0/±5°, leak sets (nominal, ×2, left-biased), 1/3/5-occupant ballast, strategies B0/B2/B3/FREE, 10 repetitions each → 3×3×3×3×4×10 ≈ 3 240 drops; prioritise a fractional design (~400 drops).
- **Metric:** EFT from video ground truth; sensor-estimated freeboard compared with video (bias, RMSE) to validate the waterline estimator.
- **Pass criterion for the simulator:** median EFT within ±20 % and ranking of strategies preserved across scenario cells.

### Stage B — Full-scale static and crane tests (partner facility)
- Scrapped compact car and a scrapped EV (pack removed, ballast-replaced, or pack sealed under supervision), crane-lowered into a test pool, safety divers, no occupants.
- Measure the floating phase without a system (direct check of the calibration and of the EV prediction), compartment flooding (internal pressure sensors), then a bolt-on bladder kit with stored-gas valves (no pyrotechnics at this stage).
- Laser/camera waterline at all four sills; IMU; leak-area estimation via pressure-decay tests before immersion.

### Stage C — Classifier data
- Test-track fording runs (0.1–0.5 m water, 5–30 km/h), car-wash and puddle-splash runs, with the sensor set mounted, to estimate real false-activation statistics (target: zero deployments in ≥ 10⁴ event exposures before any on-road use).

### Annotation and data management
- Every run logged with a scenario ID; video waterline annotation by two annotators (inter-rater agreement reported).
- Raw data released under CC BY 4.0 with a datasheet; no persons recorded.

### Ethics / safety
- No human participants until tank and crane stages are complete; any later human-factors study follows the established submersion-trainer protocols (e.g. with dive-safety supervision) under ethics approval.
