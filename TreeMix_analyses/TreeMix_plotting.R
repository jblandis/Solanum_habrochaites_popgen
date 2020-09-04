#source document comes from the TreeMix software; no modifications of that script were made
source("plotting_funcs.R")

#plot the independent tree
pdf(file="Tree_0_migration_events.pdf")
plot_tree("Shab0")
dev.off()

pdf(file="Tree_1_migration_events.pdf")
plot_tree("Shab1")
dev.off()

pdf(file="Tree_2_migration_events.pdf")
plot_tree("Shab2")
dev.off()

pdf(file="Tree_3_migration_events.pdf")
plot_tree("Shab3")
dev.off()

pdf(file="Tree_4_migration_events.pdf")
plot_tree("Shab4")
dev.off()

pdf(file="Tree_5_migration_events.pdf")
plot_tree("Shab5")
dev.off()

pdf(file="Tree_6_migration_events.pdf")
plot_tree("Shab6")
dev.off()

pdf(file="Tree_plus_7_migration_events.pdf")
plot_tree("Shab7")
dev.off()

pdf(file="Tree_8_migration_events.pdf")
plot_tree("Shab8")
dev.off()

pdf(file="Tree_9_migration_events.pdf")
plot_tree("Shab9")
dev.off()

pdf(file="Tree_10_migration_events.pdf")
plot_tree("Shab10")
dev.off()

#generate variance information for each migration point
get_f("Shab0")
get_f("Shab1") 
get_f("Shab2")
get_f("Shab3")
get_f("Shab4")
get_f("Shab5")
get_f("Shab6")
get_f("Shab7")
get_f("Shab8")
get_f("Shab9")
get_f("Shab10")

#################
# Likelihood ratio test to see which number of migration events is best
#################
library(BioGeoBEARS)

# likelhiood score best model, second best, parameters 1, parameters 2, return all info from test
#1 vs 0
lrttest(57.8061 ,-589.269 ,1,0, returnwhat="all")

# 2 vs 1
lrttest(114.991,57.806,2,1, returnwhat="all")

# 3 vs 2
lrttest(241.722,114.991,3,2, returnwhat="all")

# 4 vs 3
lrttest(265.966,241.722,4,3, returnwhat="all")

# 5 vs 4
lrttest(285.604,265.966,5,4, returnwhat="all")

# 6 vs 5
lrttest(302.818,285.604,6,5, returnwhat="all")

#7 vs 6
lrttest(311.704,302.818,7,6, returnwhat="all")

#8 vs 7
lrttest(309.866,311.704,8,7, returnwhat="all")

