FROM python:3

WORKDIR /usr/src/app

ENV TRACKIO_DIR=/trackio
ENV GRADIO_SERVER_PORT=80
ENV PYTHONUNBUFFERED=1

VOLUME ["/trackio"]

EXPOSE 80

RUN pip install trackio trackio[gpu] trackio[apple-gpu] trackio[mcp]

CMD ["trackio", "show", "--host", "0.0.0.0"]
