# This CMake file is intended to register project-wide objects.
# This allows for reuse between deployments, or other projects.

add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/Components")

add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/Ports/")

add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/Types/")

add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/TestDeployment/")
add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/ProofOfConcept/")
add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/SolarPanelProof/")
