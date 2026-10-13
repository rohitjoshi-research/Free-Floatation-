# Where, Not When — a freeboard analysis of vehicle flotation for occupant egress

Simulation code, data and paper sources for the study *"Where, Not When: A Freeboard Analysis of Vehicle Flotation
for Occupant Egress After Water Entry"* (R. Joshi, 2026, preprint in preparation).

> **Everything here is simulated.** No physical tank, crane or vehicle test has been done yet. Absolute times are not
> predictions; the comparative findings and the theory are the contribution.

## Problem
People in cars that enter water usually survive the impact and drown afterwards, because the side windows — the only
practical exit — go under water within about a minute (floating phase 15–63 s in published tests). Automatic window
opening is now rewarded by Euro NCAP (Rescue & Extrication protocol v1.1, §3.2.6), and flotation bags have been patented,
but nobody had measured **how long an opened window stays above water**. We call that the Egress Freeboard Time (EFT).

## Main results (truth simulator, 100 paired random vehicles per type)
| | ICE | EV |
|---|---|---|
| Automatic windows only: P(EFT ≥ required egress time) | 8 % | 0 % |
| One-shot symmetric flotation, 1.4 m³ | 99 % | 69 % |
| One-shot **robust front-biased split** (B3r), 1.4 m³ | 99 % | 89 % |
| Closed-loop staged FREE, 1.4 m³ | 99 % | 90 % |
| Gas for 90 % EV success: B3r vs FREE | — | 1.45 vs 1.40 m³ |

* **Where the gas goes matters; when it is released does not.** Proposition 1 proves that earlier release is pointwise
  better in heave; the simulation confirms that a robustly tuned one-shot split matches closed-loop staging.
* Closed-loop staging helped only when a **rear** bladder failed (ICE). A **front** bladder failure defeated every design.
* **Realistic fill times (2–14 s, as in nitrogen helicopter floats) do not change the ranking** (`sweep_inflation`).
* **Vehicle cost vs. safety gained:** +15–32 kg (1–2 % of curb mass), about +1 % yaw inertia with central N₂ storage.
  Fitting every car costs more per life saved than accepted US/EU values of a statistical life; the system fits fleets
  working next to still water. Automatic windows pay off everywhere. (Engineering estimates — see `docs/phase15_impact_relevance_realism.md`.)
* Held-float gas (Prop. 2): necessary bound 1.27 m³ (ICE) / 1.87 m³ (EV); sizing value 1.31 m³ (ICE, 1 occupant) and 1.94 m³ (EV), +0.078 m³ per occupant.

Full tables: `results/tables.md`. Every number in the paper is generated from `results/*.json` (`sim/make_numbers.py`,
`sim/write_paper_text.py`).

## Explainer video
`video/explainer/where_not_when_16x9.mp4` (107 s, 1080p, original procedural soundtrack) with subtitles
`where_not_when_16x9.srt` and a 60 s voice-over script. The video is rendered frame by frame from
`explainer.html` (open it in a browser to play it live). Rebuild: `npm install && python build.py &&
python render.py 0 3210 frames && python sound.py`, then encode with ffmpeg (see `render.py`). News headlines are
paraphrased and credited by outlet and date. Fonts: Inter and Source Serif 4 (SIL Open Font License), embedded.

## Limitations (read before citing)
Only the no-system floating time is calibrated (ICE 40 s; EV predicted 21 s, unvalidated). Leak paths,
bladder packaging and gas-generator dynamics are assumptions. Moving water, shallow water, waves, ice, inverted entry and
occupant behaviour are not simulated. The entry classifier is tested only on synthetic signals. See `docs/phase8_real_world_evidence_plan.md`
for the tank/crane/test-track validation plan.

## Quick start
```bash
pip install -r requirements.txt          # or requirements-min.txt
python sim/validate.py                   # simulator known-answer checks (~1 min)
QUICK=1 python sim/experiments.py bench 6   # tiny benchmark (~1 min); writes results/benchmark.json!
```
Full reproduction (≈1.5 h on 2 CPU cores) — run in a copy if you want to keep the shipped results:
```bash
python sim/experiments.py calibrate && python sim/experiments.py tune && python sim/experiments.py tune_robust
python sim/experiments.py bench 100 && python sim/experiments.py bench_extra
python sim/experiments.py sweep 40 && python sim/experiments.py sweep_faults && python sim/experiments.py catalog 40
python sim/experiments.py sweep_inflation      # realism check: bladder fill time 0.3-6 s
python sim/classifier.py && python sim/theory.py && python sim/stats_and_figures.py
python sim/figures_paper.py && python sim/figures_column.py      # diagrams + print-size figures (run in this order)
python sim/impact.py && python sim/write_discussion.py   # vehicle impact, cost per life, relevance (Discussion)
python sim/make_numbers.py && python sim/write_paper_text.py
```
Or open `notebook/FREE_validation.ipynb` in Google Colab (QUICK and FULL modes; prints paper vs recomputed values).

## Layout
```
sim/        truth.py (3-DOF plant) · controller.py (FREE, baselines, sensing, episode runner) · experiments.py
            validate.py · classifier.py · theory.py · stats_and_figures.py · figures_paper.py (architecture,
            flow, study design, forest, theory, faults) · figures_column.py (print-size column figures) ·
            make_numbers.py · write_paper_text.py · impact.py (mass/packaging/inertia budget,
            cost per life saved, inflation-time analysis) · write_discussion.py
results/    raw per-episode JSON, statistics, tables.md, numbers.json, validation_report.md (see results/README.md)
figures/    PNG + PDF figures used in the paper
paper/      LaTeX sources (IEEEtran; falls back to article for local preview), refs.bib, paper.pdf
video/      make_video.py and FREE_demo_video.mp4
docs/       phase reports: survey, brainstorm, evidence plan, peer review (+ chapter review rev3),
            phase 15 impact/relevance/realism, dissemination
notebook/   Colab reproducibility notebook
```

## Citation
See `CITATION.cff`. Code: MIT. Data, figures and video: CC BY 4.0.

## Declarations
Independent research by the author; not reviewed or endorsed by his employer. **Employer IP clearance must be completed
before public release.** AI assistance (Claude, Anthropic) was used for search support, code, simulation, statistics and
drafting; the author is responsible for the content. References marked `VERIFY` in `paper/refs.bib` must be checked
manually before submission.
