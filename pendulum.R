# Code to simulate a pendulum.

state = c(position=1, velocity=0)
dt = 0.01

time = 10
steps = floor(time/dt)

for(i in 1:steps)
{
    accel = -sin(state["position"])
    state["position"] = state["position"] + dt*state["velocity"]
    state["velocity"] = state["velocity"] + dt*accel
}