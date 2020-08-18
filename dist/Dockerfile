FROM stardog/stardog

COPY dist/stardog-license-key.bin $STARDOG_HOME/
COPY dist/entrypoint.sh ./

ENTRYPOINT ["/bin/sh", "./entrypoint.sh"]
CMD ["/opt/stardog/bin/stardog-admin"]