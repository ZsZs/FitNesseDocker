# Pull base image.
FROM stilliard/pure-ftpd

MAINTAINER zsolt.zsuffa@gmail.com

# Define working directory.
WORKDIR /fitnesse
VOLUME ["/home/ftpuser", "/etc/pure-ftpd", "/fitnesse"]
ADD build /fitnesse
EXPOSE 21 30000-30009
CMD /run.sh -c 30 -C 5 -l puredb:/etc/pure-ftpd/pureftpd.pdb -E -j -R
