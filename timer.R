library(tictoc)


# Declare path/source to scripts 
script_paths <- c("scripts/solution1.R", 
                  "scripts/solution2.R", 
                  "scripts/solution3.R")

# Initialize a list to keep the results in order. 
results <- list()

# Run each script, and keep track of results. 
for (script_path in script_paths) {
  
  tic(paste("Running", script_path)) # Start timerunning, with a message. 
  

  # Catch results from each script. 
  results[[script_path]] <- source(script_path)$value
  
  toc() # Stop timer, and note results. 
}

# Print out results. 
print(results)

#---------------------------------------------------------------------

# Comment to results --------





