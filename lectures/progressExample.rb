totalSteps = 700 / 10

0.step(700, totalSteps) do |i|
  printf("\rProgress: [%-20s]", "=" * (i/totalSteps))
  sleep(0.5)
end
puts
