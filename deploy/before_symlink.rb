# Create & symlink shared cache dir
run "mkdir -p #{config.shared_path}/cache"
run "ln -nfs #{config.shared_path}/cache #{config.release_path}/cache"

# Create & symlink shared uploads dir
run "mkdir -p #{config.shared_path}/data/uploads"
run "rmdir #{config.release_path}/data/uploads"
run "ln -nfs #{config.shared_path}/data/uploads #{config.release_path}/data/uploads"
