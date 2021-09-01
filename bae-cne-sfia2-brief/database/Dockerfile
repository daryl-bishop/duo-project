FROM mysql:5.7
ENV SECRET_KEY=pass
ENV DATABASE_URI=mysql+pymysql://root:password@mysql:3306/users
COPY ./Create.sql /docker-entrypoint-initdb.d
