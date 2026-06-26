library(gert)

# 1. Compile the document safely to your docs folder
rmarkdown::render("Notes_2026.Rmd", output_dir = "docs")

# 2. Stage the updated files
gert::git_add(c("Notes_2026.Rmd", "docs/"))

# 3. Commit the changes automatically with a timestamp
gert::git_commit(paste("Update notes:", Sys.Date()))

# 4. Push directly to GitHub main branch
gert::git_push(remote = "origin", refspec = "refs/heads/main")