# atyasu/wkhtmltopdf

Dockerized wkhtmltopdf from https://hub.docker.com/r/icalialabs/wkhtmltopdf

This use IPA-JP Font.

# Usage

```shell
# The example found at https://wkhtmltopdf.org:
docker run --rm -v $(pwd):/root atyasu/wkhtmltopdf-jp https://google.com/ /root/google.pdf
```

オプションもりもり

```shell
docker run -v $(pwd):/root atyasu/wkhtmltopdf-jp -s A6 -O Landscape --custom-header "User-Agent" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.94 Safari/537.36" --viewport-size 1280x1024 https://google.com/ test.pdf
```

# References

## Similar projects:

- https://hub.docker.com/r/icalialabs/wkhtmltopdf
- https://gist.github.com/akihiromukae/288b163d538d45a197b3f1b54ef385e8

# License

MIT (c) a-yasui
