
FROM --platform=linux/i386 debian:latest
RUN apt-get update
RUN apt-get install -y \
                    valgrind \
                    gcc \
                    gdb \
                    ruby \
                    lldb \
                    make
