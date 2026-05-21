# Code to simulate a pendulum.

state = c(position=1, velocity=0)
dt = 0.01

time = 100
steps = floor(time/dt)
keep = numeric(steps)
for(i in 1:steps)
{
    state["position"] = state["position"] + 0.5*dt*state["velocity"]
    accel = -sin(state["position"])
    state["velocity"] = state["velocity"] + dt*accel
    state["position"] = state["position"] + 0.5*dt*state["velocity"]

    keep[i] = state["position"]
}

pdf("plot.pdf")
plot((1:steps)*dt, keep, type="l", xlab="Time", ylab="Position",
     main="Pendulum Trajectory")
dev.off()
