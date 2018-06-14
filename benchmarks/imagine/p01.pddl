(define (problem p01)
(:domain imagine)
(:objects
  motor-axis - component
  lid pcb - removable-component
  lid-s0 lid-s1 lid-s2 lid-s3 pcb-s0 pcb-s1 pcb-s2 pcb-s3 - screw
  lid-a0 pcb-a0 - lever-point
  lid-a1 - suction-point
  pcb-a1 - pliers-point
)
(:init
  (associated-affordance lid lid-a0)
  (associated-affordance lid lid-a1)
  (associated-affordance pcb pcb-a0)
  (associated-affordance pcb pcb-a1)
  (associated-confidence lid-a0 medium)
  (associated-confidence lid-a1 low)
  (associated-confidence pcb-a0 low)
  (associated-confidence pcb-a1 high)
  (current-mode no-mode)
  (current-tool no-tool)
  (fixed-by lid lid-s0)
  (fixed-by lid lid-s1)
  (fixed-by lid lid-s2)
  (fixed-by lid lid-s3)
  (fixed-by pcb pcb-s0)
  (fixed-by pcb pcb-s1)
  (fixed-by pcb pcb-s2)
  (fixed-by pcb pcb-s3)
  (at-side lid top)
  (at-side pcb bottom)
  (at-side lid-s0 top)
  (at-side lid-s1 top)
  (at-side lid-s2 top)
  (at-side lid-s3 top)
  (at-side pcb-s0 bottom)
  (at-side pcb-s1 bottom)
  (at-side pcb-s2 bottom)
  (at-side pcb-s3 bottom)
  (current-side top)
  (valid-screwdriver lid-s0 flat-screwdriver)
  (valid-screwdriver lid-s1 flat-screwdriver)
  (valid-screwdriver lid-s2 flat-screwdriver)
  (valid-screwdriver lid-s3 flat-screwdriver)
  (valid-screwdriver pcb-s0 flat-screwdriver)
  (valid-screwdriver pcb-s1 flat-screwdriver)
  (valid-screwdriver pcb-s2 flat-screwdriver)
  (valid-screwdriver pcb-s3 flat-screwdriver)
  (valid-mode flat-screwdriver scara)
  (valid-mode flat-screwdriver power)
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
(:goal (and (removed-verified lid) (removed-verified pcb)))
(:metric maximize (reward))
)