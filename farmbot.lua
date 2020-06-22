turtle.select(1)
turtle.down(8)
while true do
-- yakit kontrol
  print(turtle.getFuelLevel())
  if turtle.getFuelLevel() <= 10 then
    if turtle.getItemCount(16) <= 1 then
     print("WARNING! Fuel level low!")
     print("Please put fuel to slot 16")
    end
  end
  turtle.select(16)
  turtle.refuel()
-- yakit kontrol sonu
-- Envanter kontrol
  if turtle.getItemCount(1) <= 0 then
    print("seed ammount check...      fail")
    print("Please put sapling to slot 1")
    return nil
  end
  if turtle.getItemCount(2) <= 0 then
    print("Bonemeal check...      fail")
    print("Please put bonemeal to slot 2")
    return nil
  end
-- Envanter kontrol sonu
  turtle.select(1)
  turtle.dig()
  turtle.place()
  sleep(1)
  turtle.select(2)
  turtle.place()
  turtle.place()
  turtle.place()
  turtle.place()
  sleep(1)
end