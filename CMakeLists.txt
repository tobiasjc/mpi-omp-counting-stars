cmake_minimum_required(VERSION 3.13)
project(parallel_counting_stars C)
set(CMAKE_C_STANDARD 99)

# mpi
find_package(MPI REQUIRED)
include_directories(${MPI_INCLUDE_PATH})
set(CMAKE_C_COMPILER mpicc)
set(CMAKE_CXX_COMPILER mpicxx)

# omp
find_package(OpenMP REQUIRED)
set(CMAKE_C_FLAGS ${OpenMP_C_FLAGS})

# libpng
find_package(PNG REQUIRED)
include_directories(${LIBPNG_INCLUDE_DIRS})
link_directories(${LIBPNG_LIBRARY_DIRS})
link_libraries(${LIBPNG_LIBRARIES})

# project includes
include_directories(./include)

# exec
add_executable(parallel_counting_stars main.c src/fifo_pix_queue.c include/fifo_pix_queue.h src/imagelib.c include/imagelib.h include/list_link.h src/list_link.c)
target_link_libraries(parallel_counting_stars ${PNG_LIBRARY})
target_link_libraries(parallel_counting_stars m)
