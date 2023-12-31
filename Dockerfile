FROM hitokizzy/geezram:slim-buster

RUN git clone -b main https://github.com/Junxo/ubotubotan /home/ubotubotan/
WORKDIR /home/ubotubotan

RUN wget https://raw.githubusercontent.com/Junxo/ubotubotan/main/requirements.txt \
    && pip3 install --no-cache-dir -U -r requirements.txt \
    && rm requirements.txt
    
CMD bash start
