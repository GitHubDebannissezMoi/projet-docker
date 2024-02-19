# Créer un Dockerfile pour cette application en mode production
FROM rustlang/rust:nightly

COPY . /usr/local/cargo/bin

RUN apt-get update && apt-get install -y libpq-dev pkg-config libssl-dev
    
RUN cargo install diesel_cli --no-default-features --features postgres

WORKDIR /usr/local/cargo/bin

RUN cargo install --path .

RUN cp /home/blog .

CMD diesel migration run && ./blog