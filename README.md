# results/ — provenance of every file

| File | Produced by | Contents |
|---|---|---|
| calibration.json | `experiments.py calibrate` | cabin leak area fitted so nominal ICE, no system, reaches the sills at 40 s; EV prediction |
| tuning.json | `experiments.py tune`, `tune_robust` | B3/B4 front share on truth nominal; B3r front share on training draws (seeds 9000+) |
| benchmark.json | `experiments.py bench 100` | per-episode results, 100 draws × 2 vehicles × (B0 + 9 strategies × 4 gas), seeds 5000+ |
| benchmark_extra.json | `experiments.py bench_extra` | B3r and FREEr on the same draws |
| sweeps.json | `experiments.py sweep 40` | noise, latency, leak, dead bladder, f0 sweeps (seeds 6000+) |
| sweeps_faults.json | `experiments.py sweep_faults` | faults vs B3/B3r/FREE/FREEr (same draws as sweeps) |
| catalog.json | `experiments.py catalog 40` | entry attitude × occupants scenario catalogue (seeds 7000+, CRC32-derived sub-seeds) |
| sweep_inflation.json | `experiments.py sweep_inflation` | bladder fill time τ_b ∈ {0.3,1,2,4,6} s for B2/B3r/FREE at mid gas, B0 reference (seeds 6000+, n=40) |
| impact.json | `impact.py` | vehicle impact budget (P/A-tagged), benefit model, cost per life saved, break-even exposure, inflation-time statistics |
| classifier.json | `classifier.py` | synthetic logic check of the entry classifier |
| theory.json | `theory.py` | Prop. 2 thresholds, Prop. 3 CG ranges |
| validation_report.md | `validate.py` | simulator known-answer checks (final code) |
| bench_stats.json, extra_stats.json, sweep_stats.json, fault_stats.json, catalog_stats.json | `stats_and_figures.py` | statistics (bootstrap, Wilcoxon+Holm, McNemar, r_rb) |
| tables.md | `stats_and_figures.py` | human-readable tables T1–T7 |
| numbers.json | `make_numbers.py` | every number quoted in the paper |
| headline.json | inline in the pipeline (see paper build) | video closing-card statements, generated from numbers.json |
| trace_examples.json | `stats_and_figures.py` | traces behind the trace figure |

Removed / invalid runs: the rev1 benchmark (seeds 1000+, pure-staging FREE with a commit bug) was overwritten and is **not**
used anywhere; the first scenario catalogue (non-deterministic `hash()` sub-seeds) was regenerated with CRC32 sub-seeds.
