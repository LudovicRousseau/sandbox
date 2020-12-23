all:
	echo "RUNNER_OS: $(RUNNER_OS)"
	echo "CONF: ${CONF}"
	./configure
	echo "Pouet"
