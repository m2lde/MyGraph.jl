using MyGraph

G1 = @buildgraph false 0,1,4 0,7,8 1,2,8 1,7,11 2,3,7 2,8,2 2,5,4 3,4,9 3,5,14 4,5,10 5,6,2 6,8,6 6,7,1 7,8,7
D1,T1 = mstprimjarnik(G1)

G2 = buildconnectedgraph(collect(0:11); f = (x,y) -> rand(10:200))
D2,T2 = mstprimjarnik(G2)

printpath(D2, 0,5)
