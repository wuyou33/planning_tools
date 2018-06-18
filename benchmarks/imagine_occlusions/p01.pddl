(define (problem p01)
(:domain imagine)
(:objects
  motor-axis - component
  pcb chip - removable-component
  pcb-s0 pcb-s1 pcb-s2 pcb-s3 pcb-s4 - screw
  pcb-a0 pcb-a1 pcb-a2 pcb-a3 - lever-point
  chip-a0 pcb-a4 - pliers-point
)
(:init
  (has-affordance chip chip-a0)
  (has-affordance pcb pcb-a0)
  (has-affordance pcb pcb-a1)
  (has-affordance pcb pcb-a2)
  (has-affordance pcb pcb-a3)
  (has-affordance pcb pcb-a4)
  (has-confidence chip-a0 medium)
  (has-confidence pcb-a0 low)
  (has-confidence pcb-a1 medium)
  (has-confidence pcb-a2 medium)
  (has-confidence pcb-a3 high)
  (has-confidence pcb-a4 high)
  (current-mode no-mode)
  (current-tool no-tool)
  (connected pcb motor-axis)
  (connected motor-axis pcb)
  (fixed-by pcb pcb-s0)
  (fixed-by pcb pcb-s1)
  (fixed-by pcb pcb-s2)
  (fixed-by pcb pcb-s3)
  (fixed-by pcb pcb-s4)
  (at-side chip bottom)
  (at-side pcb bottom)
  (at-side pcb-s0 bottom)
  (at-side pcb-s1 bottom)
  (at-side pcb-s2 bottom)
  (at-side pcb-s3 bottom)
  (at-side pcb-s4 bottom)
  (hides-component pcb chip)
  (hides-affordance pcb chip-a0)
  (current-side top)
  (valid-sd pcb-s0 flat-sd)
  (valid-sd pcb-s1 flat-sd)
  (valid-sd pcb-s2 flat-sd)
  (valid-sd pcb-s3 flat-sd)
  (valid-sd pcb-s4 star-sd)
  (valid-mode flat-sd scara)
  (valid-mode flat-sd power)
  (valid-mode star-sd scara)
  (valid-mode star-sd power)
  (valid-mode suction-tool scara)
  (valid-mode suction-tool power)
  (valid-mode cutter scara)
  (valid-mode pliers power)
  (valid-mode hammer power)
  (opposite-side top bottom)
  (opposite-side left right)
  (opposite-side front back)
  (opposite-side bottom top)
  (opposite-side right left)
  (opposite-side back front)
)
;(:goal (forall (?s - screw) (not (fixed-by lid ?s))))
(:goal (and (removed-verified pcb) (removed-verified chip)))
(:metric maximize (reward))
)
