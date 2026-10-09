FROM anasty17/mltb:latest

WORKDIR /app
RUN chmod 777 /app

RUN python3 -m venv mltbenv

COPY requirements.txt .
RUN mltbenv/bin/pip install --no-cache-dir -r requirements.txt \
    && mltbenv/bin/pip install --no-cache-dir pycountry \
    && mltbenv/bin/python -c "from pycountry import languages; print('pycountry dependency OK')"

COPY . .

RUN sed -i 's/\r$//' *.sh

CMD ["bash", "start.sh"]
