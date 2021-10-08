#Put all my models togather differ with countries to see additional relationships:
plot_final_country <- ggplot(data = finaltable, aes(x = meanyearseducated, y = femaleemploymentrate, color = country))+
  geom_point()+
  geom_smooth(method="glm", se=TRUE)+
  xlim(0, 30)+
  ylim(0, 75)+
  xlab("Female's Mean Years in school who is older than 15")+
  ylab("Female's employment rate who is older than 15")
plot_final_country



plot_final_year <- ggplot(data = finaltable, aes(x = meanyearseducated, y = femaleemploymentrate, color = year))+
  geom_point()+
  geom_smooth(method="glm", se=FALSE)+
  xlim(0, 30)+
  ylim(0, 75)+
  xlab("Female's Mean Years in school who is older than 15")+
  ylab("Female's employment rate who is older than 15")
plot_final_year




