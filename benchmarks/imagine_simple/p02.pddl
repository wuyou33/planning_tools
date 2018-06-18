(define (problem p02)
(:domain imagine)
(:objects
  motor-axis - component
  pcb - removable-component
  pcb-s0 pcb-s1 - screw
  pcb-a0 pcb-a1 - lever-point
  pcb-a2 - pliers-point
)
(:init
  (has-affordance pcb pcb-a0)
  (has-affordance pcb pcb-a1)
  (has-affordance pcb pcb-a2)
  (has-confidence pcb-a0 low)
  (has-confidence pcb-a1 low)
  (has-confidence pcb-a2 low)
  (current-mode no-mode)
  (current-tool no-tool)
  (connected pcb motor-axis)
  (connected motor-axis pcb)
  (fixed-by pcb pcb-s0)
  (fixed-by pcb pcb-s1)
  (stuck pcb-s0)
  (at-side pcb bottom)
  (at-side pcb-s0 bottom)
  (at-side pcb-s1 bottom)
  (current-side top)
  (valid-sd pcb-s0 flat-sd)
  (valid-sd pcb-s1 star-sd)
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
(:goal (removed-verified pcb))
(:metric maximize (reward))
)