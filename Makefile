# Set the default goal to be the `linux` target
#.DEFAULT_GOAL := linux

# Declare the phony targets
#.PHONY: linux clean

# Define the linux target
linux: clean
	# Make  the linux.sh script executable
	#chmod u+x linux.sh
	# Run the linux.sh script
	./bin/linux.sh

# Define the clean target
clean: #cleanup.sh
	# Make the cleanup.sh script executable
	# #chmod u+x cleanup.sh
	# Run the cleanup.sh script
	./bin/cleanup.sh

