# Créer un Dockerfile pour cette application en mode production
FROM rustlang/rust:nightly

COPY . /usr/src/app

RUN apt-get update && apt-get install -y libpq-dev pkg-config libssl-dev

WORKDIR /usr/src/app

RUN cargo install --path .

RUN cp /usr/local/cargo/bin/blog ./blog

RUN cargo install diesel_cli --no-default-features --features postgres

CMD diesel migration run && ./blog