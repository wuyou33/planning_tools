(define (problem p03)
(:domain imagine)
(:objects
  lid reader platter pcb - removable-component
  lid-s0 reader-s0 - screw
  pcb-s0 pcb-s1 pcb-s2 pcb-s3 pcb-s4 - screw
  lid-a0 reader-a0 pcb-a0 pcb-a1 pcb-a2 pcb-a3 - lever-point
  lid-a1 - suction-point
  reader-a1 - pliers-point
  platter-a0 platter-a1 - suction-point
)
(:init
  (has-affordance lid lid-a0)
  (has-affordance lid lid-a1)
  (has-affordance pcb pcb-a0)
  (has-affordance pcb pcb-a1)
  (has-affordance pcb pcb-a2)
  (has-affordance pcb pcb-a3)
  (has-affordance pcb pcb-a4)
  (has-affordance reader reader-a0)
  (has-affordance reader reader-a1)
  (has-affordance platter platter-a0)
  (has-affordance platter platter-a1)
  (has-confidence lid-a0 medium)
  (has-confidence lid-a1 low)
  (has-confidence reader-a0 low)
  (has-confidence reader-a1 high)
  (has-confidence platter-a0 low)
  (has-confidence platter-a1 high)
  (has-confidence pcb-a0 low)
  (has-confidence pcb-a1 medium)
  (has-confidence pcb-a2 medium)
  (has-confidence pcb-a3 high)
  (has-confidence pcb-a4 high)
  (current-mode no-mode)
  (current-tool no-tool)
  (fixed-by lid lid-s0)
  (fixed-by reader reader-s0)
  (fixed-by pcb pcb-s0)
  (fixed-by pcb pcb-s1)
  (fixed-by pcb pcb-s2)
  (fixed-by pcb pcb-s3)
  (fixed-by pcb pcb-s4)
  (loose platter)
  (hides-component lid reader)
  (hides-component lid platter)
  (hides-component pcb reader-s0)
  (partially-occludes reader platter)
  (hides-affordance reader platter-a1)
  (hides-affordance lid reader-a0)
  (hides-affordance lid reader-a1)
  (hides-affordance lid platter-a0)
  (at-side lid top)
  (at-side lid-s0 top)
  (at-side reader top)
  (at-side platter top)
  (at-side reader-s0 bottom)
  (at-side pcb bottom)
  (at-side pcb-s0 bottom)
  (at-side pcb-s1 bottom)
  (at-side pcb-s2 bottom)
  (at-side pcb-s3 bottom)
  (at-side pcb-s4 bottom)
  (current-side top)
  (valid-sd lid-s0 flat-sd)
  (valid-sd reader-s0 star-sd)
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
(:goal (and (removed-verified reader) (removed-verified platter)))
(:metric maximize (reward))
)
