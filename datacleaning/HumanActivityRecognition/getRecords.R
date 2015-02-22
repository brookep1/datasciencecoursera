#####
# getRecords.R
####
# This script pulls the desired training records
# It binds the subjects and activities for that group onto the table 
# so they don't get lost before any merge
# Create 2 data tables, one for each group
getRecords <- function(group,
                       dir=dir,
                       rows,
                       cols) {
    message(paste0("getRecords: Getting Records and IDs for Group: ",group))
    # Get the vector of IDs for subjects and activities
    subjects <- retrieveSubjects(group=group,dir=dir,rows=rows) 
    activities <- retrieveActivities(group=group, dir=dir,rows=rows) 
    records <- retrieveRecords(group=group, dir=dir,rows=rows,cols=cols) 
    records<-cbind(subjects,activities,records)
    records
}

