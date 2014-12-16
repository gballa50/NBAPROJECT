---

library(googleVis)

bar=gvisBarChart(forbsdf, xvar="Team", yvar=c("Facebook.Friends", "Twitter.Followers"), 
                       options=list(
                         title="Teams' Facebook Friends Vs. Twitter Followers For 2011-2012 Season",
                         titleTextStyle="{color:'blue', 
                                           fontName:'Orbitron', 
                                           fontSize:16}",                         
                         backgroundColor="#D3D3D3",                          
                         vAxis="{gridlines:{color:'red', count:3}}",
                         hAxis="{title:'Friends/Followers', titleTextStyle:{color:'blue'}}",
                         series="[{color:'blue', targetAxisIndex: 0}, 
                                   {color: 'orange',targetAxisIndex:1}]",
                         vAxes="[{title:'Team'}]",
                         legend="right",
                         width=1000,
                         height=700                       
                       ))

plot(bar)

------

m=gvisMotionChart(nbafran06_12, idvar = "team", timevar="year", yvar="revenue")

plot(m)