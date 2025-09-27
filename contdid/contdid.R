# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Difference-in-Differences with a Continuous Treatment Use cont_did (contdid) With (In) R Software
install.packages("remotes")
remotes::install_github("bcallaway11/contdid")
library("contdid")
contdid = read.csv("https://raw.githubusercontent.com/timbulwidodostp/contdid/main/contdid/contdid.csv",sep = ";")
# Estimation Difference-in-Differences with a Continuous Treatment Use cont_did (contdid) With (In) R Software
cont_did_1 <- cont_did(yname = "Y", tname = "time_period", idname = "id", dname = "D", data = contdid, gname = "G", target_parameter = "slope", aggregation = "dose",
treatment_type = "continuous", control_group = "notyettreated", biters = 10, cband = TRUE, num_knots = 1, degree = 3,)
summary(cont_did_1)
cont_did_2 <- cont_did(yname = "Y", tname = "time_period", idname = "id", dname = "D", data = contdid, gname = "G", target_parameter = "level",
aggregation = "eventstudy", treatment_type = "continuous", control_group = "notyettreated", biters = 10, cband = TRUE, num_knots = 1, degree = 3,)
summary(cont_did_2)
cont_did_3 <- cont_did(yname = "Y", tname = "time_period", idname = "id", dname = "D", data = contdid, gname = "G", target_parameter = "slope",
aggregation = "eventstudy", treatment_type = "continuous", control_group = "notyettreated", biters = 10, cband = TRUE, num_knots = 1, degree = 3,)
summary(cont_did_3)
# Difference-in-Differences with a Continuous Treatment Use cont_did (contdid) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished