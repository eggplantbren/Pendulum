# Code to simulate a pendulum.

state = c(position=1, velocity=0)
dt = 0.01

time = 100
steps = floor(time/dt)
keep = numeric(steps)
for(i in 1:steps)
{
    accel = -sin(state["position"])
    state["position"] = state["position"] + dt*state["velocity"]
    state["velocity"] = state["velocity"] + dt*accel
    keep[i] = state["position"]
}

plot((1:steps)*dt, keep, type="l", xlab="Time", ylab="Position")