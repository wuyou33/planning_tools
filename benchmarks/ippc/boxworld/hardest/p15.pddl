(define (problem box-p15)
(:domain boxworld)
(:objects box0 box1 box2 box3 box4 box5 box6 box7 box8 box9 box10 box11 box12 box13 box14 box15 box16 box17 box18 box19 - box truck0 truck1 - truck plane0 - plane truck2 truck3 - truck plane1 - plane city0 city1 city2 city3 city4 city5 city6 city7 city8 city9 city10 city11 city12 city13 city14 city15 city16 city17 city18 city19 - city)
(:init
  (box-at-city box0 city17)
  (box-at-city box1 city14)
  (box-at-city box2 city12)
  (box-at-city box3 city9)
  (box-at-city box4 city9)
  (box-at-city box5 city11)
  (box-at-city box6 city18)
  (box-at-city box7 city1)
  (box-at-city box8 city13)
  (box-at-city box9 city7)
  (box-at-city box10 city5)
  (box-at-city box11 city15)
  (box-at-city box12 city19)
  (box-at-city box13 city8)
  (box-at-city box14 city9)
  (box-at-city box15 city5)
  (box-at-city box16 city17)
  (box-at-city box17 city5)
  (box-at-city box18 city9)
  (box-at-city box19 city8)
  (truck-at-city truck0 city0)
  (truck-at-city truck1 city0)
  (plane-at-city plane0 city0)
  (truck-at-city truck2 city1)
  (truck-at-city truck3 city1)
  (plane-at-city plane1 city1)
  (can-drive city0 city10)
  (can-drive city0 city13)
  (can-drive city0 city1)
  (can-drive city0 city2)
  (wrong-drive1 city0 city10)
  (wrong-drive2 city0 city13)
  (wrong-drive3 city0 city1)
  (can-drive city1 city0)
  (can-drive city1 city9)
  (can-drive city1 city11)
  (wrong-drive1 city1 city0)
  (wrong-drive2 city1 city9)
  (wrong-drive3 city1 city11)
  (can-drive city2 city19)
  (can-drive city2 city0)
  (can-drive city2 city10)
  (wrong-drive1 city2 city19)
  (wrong-drive2 city2 city0)
  (wrong-drive3 city2 city10)
  (can-drive city3 city8)
  (can-drive city3 city14)
  (can-drive city3 city9)
  (wrong-drive1 city3 city8)
  (wrong-drive2 city3 city14)
  (wrong-drive3 city3 city9)
  (can-drive city4 city17)
  (can-drive city4 city6)
  (can-drive city4 city18)
  (wrong-drive1 city4 city17)
  (wrong-drive2 city4 city6)
  (wrong-drive3 city4 city18)
  (can-drive city5 city18)
  (can-drive city5 city16)
  (can-drive city5 city17)
  (can-drive city5 city7)
  (wrong-drive1 city5 city18)
  (wrong-drive2 city5 city16)
  (wrong-drive3 city5 city17)
  (can-drive city6 city4)
  (can-drive city6 city16)
  (can-drive city6 city17)
  (can-drive city6 city12)
  (wrong-drive1 city6 city4)
  (wrong-drive2 city6 city16)
  (wrong-drive3 city6 city17)
  (can-drive city7 city19)
  (can-drive city7 city5)
  (can-drive city7 city18)
  (wrong-drive1 city7 city19)
  (wrong-drive2 city7 city5)
  (wrong-drive3 city7 city18)
  (can-drive city8 city3)
  (can-drive city8 city11)
  (can-drive city8 city9)
  (can-drive city8 city14)
  (can-drive city8 city15)
  (wrong-drive1 city8 city3)
  (wrong-drive2 city8 city11)
  (wrong-drive3 city8 city9)
  (can-drive city9 city1)
  (can-drive city9 city3)
  (can-drive city9 city8)
  (can-drive city9 city14)
  (can-drive city9 city11)
  (wrong-drive1 city9 city1)
  (wrong-drive2 city9 city3)
  (wrong-drive3 city9 city8)
  (can-drive city10 city0)
  (can-drive city10 city2)
  (can-drive city10 city13)
  (can-drive city10 city19)
  (wrong-drive1 city10 city0)
  (wrong-drive2 city10 city2)
  (wrong-drive3 city10 city13)
  (can-drive city11 city1)
  (can-drive city11 city8)
  (can-drive city11 city9)
  (can-drive city11 city15)
  (wrong-drive1 city11 city1)
  (wrong-drive2 city11 city8)
  (wrong-drive3 city11 city9)
  (can-drive city12 city15)
  (can-drive city12 city6)
  (can-drive city12 city16)
  (wrong-drive1 city12 city15)
  (wrong-drive2 city12 city6)
  (wrong-drive3 city12 city16)
  (can-drive city13 city0)
  (can-drive city13 city10)
  (can-drive city13 city16)
  (wrong-drive1 city13 city0)
  (wrong-drive2 city13 city10)
  (wrong-drive3 city13 city16)
  (can-drive city14 city3)
  (can-drive city14 city9)
  (can-drive city14 city8)
  (wrong-drive1 city14 city3)
  (wrong-drive2 city14 city9)
  (wrong-drive3 city14 city8)
  (can-drive city15 city12)
  (can-drive city15 city11)
  (can-drive city15 city8)
  (wrong-drive1 city15 city12)
  (wrong-drive2 city15 city11)
  (wrong-drive3 city15 city8)
  (can-drive city16 city5)
  (can-drive city16 city6)
  (can-drive city16 city12)
  (can-drive city16 city13)
  (can-drive city16 city18)
  (wrong-drive1 city16 city5)
  (wrong-drive2 city16 city6)
  (wrong-drive3 city16 city12)
  (can-drive city17 city4)
  (can-drive city17 city5)
  (can-drive city17 city6)
  (can-drive city17 city18)
  (wrong-drive1 city17 city4)
  (wrong-drive2 city17 city5)
  (wrong-drive3 city17 city6)
  (can-drive city18 city4)
  (can-drive city18 city5)
  (can-drive city18 city7)
  (can-drive city18 city16)
  (can-drive city18 city17)
  (wrong-drive1 city18 city4)
  (wrong-drive2 city18 city5)
  (wrong-drive3 city18 city7)
  (can-drive city19 city2)
  (can-drive city19 city7)
  (can-drive city19 city10)
  (wrong-drive1 city19 city2)
  (wrong-drive2 city19 city7)
  (wrong-drive3 city19 city10)
)
(:goal (and (box-at-city box10 city0) (box-at-city box16 city11) (box-at-city box5 city1) (box-at-city box12 city3) (box-at-city box15 city6) (box-at-city box13 city2) (box-at-city box9 city6) (box-at-city box1 city6) (box-at-city box11 city19) (box-at-city box3 city15) (box-at-city box0 city16) (box-at-city box6 city16) (box-at-city box7 city11) (box-at-city box17 city1) (box-at-city box18 city6) (box-at-city box2 city18) (box-at-city box14 city1) (box-at-city box8 city17) (box-at-city box19 city10) (box-at-city box4 city7)))
(:goal-reward 500)
(:metric maximize (reward))
)