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

# Result solution 1: Running scripts/solution1.R: 35.567 sec elapsed
# Result solution 2: Running scripts/solution2.R: 18.477 sec elapsed
# Result solution 3: Running scripts/solution3.R: 18.468 sec elapsed

# Solution 1 is most definitely slower than solution 2 and 3. 
# Solution 1 uses a sequential process, limited to one CPU only. This makes 
# the computing power less powerful than using several CPUS with the parallel computing 
# method. 

# Solution 3 is a little bit faster than solution 2. Perhaps this is because the 
# parallel computing method starts in an earlier function in solution 3 than 
# than in 2? This makes the computer take advantage of speeding 
# up its computing power earlier in the script, making the result a bit better? 
# Note that the difference in the results between 2-3 is minimal, and its hard to 
# conclude with anything based on this result. 





