# makeDataset.R

# Makes the dataset with only the rows we want and Activity names added
makeDataset <- function(rows=limit,dir=dataDir,regex=colRegex) {
    if (!is.null(rows)) {
        message(paste0("Rows limited to ",rows))
    } else if (!is.null(limit)) {
        message(paste0("Limiting rows to ",limit))
        rows = limit
    } else {
        message(paste0("Using all rows ",limit))
        rows = -1
    }
    # There are 561 Feature Labels and 6 Activity Labes
    featureLabels <- retrieveFeatureLabels(dir=dir)
    activityLabels <- retrieveActivityLabels(dir=dir)
    
    # This will create a vector of the columns numbers we want
    cols <- grep(regex,featureLabels[,1])    
    colNames <- grep(regex,featureLabels[,1],value=T)    
    # Make the Column names a little less ugly
    colNames <- gsub("[()]","",colNames)
    
    # binding together immediately to eliminate an intermediate variable
    records <- rbind(
        getRecords(group="train",dir=dir,rows=rows,cols=cols),
        getRecords(group="test",dir=dir,rows=rows,cols=cols)
    )
    
    # Pull back out the ID columns and overwrite records to save space
    idSubj <- as.factor(records[,1])
    idActiv <- records[,2]
    records <- records[,c(3:68)]
    
    # Make a small function that returns the activity name and apply it
    # Based on the ActivityID (which matches the row number of the data)
    activName <- as.factor(sapply(idActiv,function (x) activityLabels[x,1]))
    # Return the data in the order we want
    dataSet <- cbind(idSubj,activName,records)
    # Give it the names
    names(dataSet) <- c("SubjectID","ActivityName",colNames)
    dataSet    
}
