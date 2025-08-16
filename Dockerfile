FROM ruby:3.4-alpine

# Installing build tools
RUN apk add --no-cache build-base
RUN apk add --no-cache gcc g++ make libc-dev

# Install library dependencies needed for Jekyll & gems
RUN apk add --no-cache libffi-dev zlib-dev yaml-dev

# Install Jekyll and Bundler gems
RUN gem install jekyll bundler

COPY . /jekyll/workdir
WORKDIR /jekyll/workdir

# Expose Jekyll's default port
EXPOSE 4000

CMD ["jekyll", "serve", "--host", "0.0.0.0"]
