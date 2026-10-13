# Truth-simulator validation report (rev1)

| Check | Expected | Simulated | Pass |
|---|---|---|---|
| Archimedes draft, box hull | 0.1932 m | 0.1932 m | PASS |
| Static trim, box with CG +0.15 m | 0.985 deg | 0.987 deg | PASS |
| Symmetric case: max |roll| | 0 deg | 1.53e-15 deg | PASS |
| Water conserved (internal leaks only) | 0.4000 m3 | 0.4000 m3 | PASS |
| Compartment volumes within capacity | <= cap | True | PASS |
| Heave damping ratio (log decrement) | 0.30 (design) | 0.30 | PASS |
| Determinism (same seed, FREE, EV) | 134.59999999999658 | 134.59999999999658 | PASS |
| B2 identical under perfect vs zero-noise sensing | 206.50 | 206.50 | PASS |
| Inhibited FREE equals B0 (moving-water branch) | 27.00 | 27.00 | PASS |

## Internal model vs truth (terminal min sill freeboard, symmetric one-shot)

Diagnostic only: the controller's model is intentionally simpler than the plant.

| Vehicle | Gas m3 | Internal model [m] | Truth after 600 s or at sinking [m] | Truth reached -1 m at [s] |
|---|---|---|---|---|
| ICE | 1.4 | 0.217 | 0.038 | - |
| ICE | 2.2 | 0.370 | 0.349 | - |
| EV | 1.8 | -0.012 | -1.001 | 341.5 |
| EV | 2.2 | 0.256 | 0.239 | - |
