syms s

G_s = -0.125*(s+0.437)/((s+1.29)*(s+0.193))

g_t = ilaplace(G_s)
