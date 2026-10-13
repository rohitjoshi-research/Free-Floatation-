# Phase 14 — Dissemination pack (rev2, 13 Oct 2026)

> **Do not publish anything below until employer IP clearance (Valeo) is confirmed, conflict of interest is declared,
> and the references marked VERIFY are checked.** Publishing a preprint, video or post is a novelty-destroying disclosure.

## 1. One-sentence novelty statement
We show — with a freeboard formulation, three propositions and a paired simulation study — that what keeps a sinking car's
window exit above water is *where* the flotation gas goes, not *when* it is released, so a robustly tuned one-shot design
matches a sensor-steered "smart" one except when a rear float fails.

## 2. Identifier plan
| Step | Where | Notes |
|---|---|---|
| 1 | Employer IP / legal clearance | written approval; decide on any patent filing first |
| 2 | Add ORCID to CITATION.cff, .zenodo.json and paper | |
| 3 | GitHub repository (public) | tag `v1.0.0`; README limitations visible above the fold |
| 4 | Zenodo GitHub integration → software DOI | `.zenodo.json` already prepared |
| 5 | Separate Zenodo records: dataset (`results/`), video (`FREE_demo_video.mp4`) | CC BY 4.0 |
| 6 | Software Heritage "Save code now" | permanent SWHID |
| 7 | Preprint: TechRxiv (IEEE-aligned) or arXiv (eess.SY) | cite the DOIs; same version as the code tag |
| 8 | Journal submission: IEEE Access (realistic) | T-ITS only after tank data (Phase 8 Stage A) |
| 9 | Link all records to ORCID | |

## 3. LinkedIn post (short, story hook, proverb, no overclaiming)

**"The sea refuses no river."**

29 September 2026. A car leaves the road and slides into the River Wear in Sunderland. Four young people inside. One gets out.

Most people in cars that enter water survive the crash — and then lose the race to the window. (Reported by ITV News; my thoughts are with the families.)
I modelled that race.

🔹 **The question:** once a car is in water, what keeps the window exit above the waterline long enough to climb out?
🔹 **The metric:** Egress Freeboard Time — seconds an *opened* window stays ≥10 cm above water.
🔹 **What I found (simulation, 200 random vehicles):**
 • Automatic windows alone: enough time in 8 % (petrol car) and 0 % (EV) of cases.
 • Add flotation, front-biased and released at once: 89 % for the EV at 1.4 m³.
 • A "smart" sensor-steered staging controller did **not** beat a well-tuned one-shot design — except when a rear float failed.
 • A failed *front* float defeated every design → front redundancy matters.
🔹 **The lesson:** where the gas goes matters; when it is released does not. (There's a proof for that, too.)
🔹 **Open issues:** no tank or vehicle tests yet; moving floodwater needs flotation *inhibited*, not deployed.

Code, data and video: [link] · Preprint: [link]
All results are simulated. Views are my own and not those of my employer.

#VehicleSafety #EuroNCAP #FunctionalSafety #SOTIF #EV #Research

## 4. Plain-language summary (≈150 words)
When a car ends up in a river or lake, most people inside survive the impact. The danger comes in the next minute: water
rises up the doors, and once it reaches the bottom of the side windows, getting out becomes very hard. Some new cars
can open their windows automatically in water, and inventors have patented airbags that make cars float. This study asked
which design keeps the opened window above water the longest. Using a computer model of a floating, slowly flooding car,
it found that automatic windows alone rarely give people enough time, especially in heavy electric cars. Adding floats
helps a lot — if more of the float is placed at the front, where the engine bay floods first. Surprisingly, a "smart"
system that holds some gas back and steers it with sensors did no better than simply firing everything at once in the
right places. All results come from simulation and still need real tests.

## 5. Twenty basic questions and answers
1. **What problem does this solve?** Keeping a car's side-window exit above water long enough for occupants to climb out after the car enters water.
2. **Why windows, not doors?** Water pressure makes doors almost impossible to open once the car is in water; side windows are the recommended exit.
3. **What is EFT?** Egress Freeboard Time: seconds an automatically opened side window stays at least 10 cm above the water.
4. **Is this a real product?** No. It is a simulation study of designs.
5. **Were any cars tested?** No. Only computer simulation; a tank and crane test plan is included.
6. **What is "flotation" here?** Inflatable bladders at the sides of the car near the wheel arches, filled from gas generators.
7. **What was the main finding?** Where the flotation gas goes matters; when it is released does not.
8. **Why front-biased?** The front bay (grille, underbody) floods first, so the nose sinks first.
9. **What is FREE?** A controller that holds 25 % of the gas back and steers it using pressure sensors that estimate the waterline at the window sills.
10. **Did FREE work?** It worked as well as a well-tuned one-shot design, but not better — except when a rear bladder failed.
11. **Why didn't the smart design win?** Releasing gas later lets the car sink deeper meanwhile; a proof shows earlier release is always better in the simple heave model.
12. **Are EVs worse?** Yes in this model: heavier cars need more gas — about 1.94 m³ versus 1.31 m³ for a held float.
13. **How much gas is that?** Roughly 1–2 m³ at surface pressure — like 10–20 passenger airbags; packaging is an open problem.
14. **What about floods with fast-moving water?** Floating there can be worse — the car is carried away — so the system must stay off and only open windows.
15. **Could it trigger by mistake on the road?** That is the main safety risk; the design requires several sensors to agree and loss of wheel contact. Real false-alarm rates are unknown.
16. **What if a bladder is punctured in the crash?** A rear failure can be compensated; a front failure defeated every design → front redundancy needed.
17. **Does Euro NCAP require this?** No. Euro NCAP rewards windows that keep working (or open automatically) within 2 minutes; this study suggests that alone is not enough for heavy cars.
18. **What should occupants do today?** Follow the evidence-based sequence: seatbelts off, window open or broken, children first, out — immediately.
19. **What is the next step?** 1:10 scale tank tests with video ground truth, then crane tests with scrapped vehicles.
20. **Where are the code and data?** In the repository with a reproducibility notebook; DOIs will follow release.

## 6. Credits
Rohit Joshi (concept, decisions, review). AI assistance: Claude (Anthropic) for search support, code, simulation,
statistics and drafting. Field-test literature: G. Giesbrecht and co-workers; Euro NCAP for the submergence protocol.
