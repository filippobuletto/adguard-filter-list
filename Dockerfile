FROM node:19

RUN npm i -g @adguard/hostlist-compiler

ENTRYPOINT [ "/usr/local/bin/hostlist-compiler" ]