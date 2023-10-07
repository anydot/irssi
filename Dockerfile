FROM library/irssi:1.4.4
USER root

RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends cpanminus make cstocs libdbd-sqlite3-perl libmoosex-types-perl libmoosex-getopt-perl libtest-expect-perl liblist-moreutils-perl libmoosex-strictconstructor-perl libbot-training-perl libdata-dump-perl libtest-exception-perl libfile-countlines-perl libtest-script-run-perl libdigest-sha-perl sqlite3 \ 
    && cpanm -n Hailo \
    && rm -rf /var/cache/apt/archives /var/lib/apt/lists/* /root/.cpanm

USER user
CMD ["irssi"]
