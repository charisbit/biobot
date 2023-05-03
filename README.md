# BioGPT Chatbot
> A BioGPT Chatbot of Discord and WhatsApp.


This file will become your README and also the index of your documentation.

## Install

```bash
%%bash
pip install biobot
```

## How to use

---
Set your credentials with environment variables. And then run the command below to launch your Discord Chatbot.

```bash
%%bash
python -m biobot.discord
```

---
Configure Access Token for WhatsApp Chatbot

```bash
%%bash
mkdir -p ~/.config/ipymock
```

💡　get \<access_token\>　=> [accessToken](https://chat.openai.com/api/auth/session)

```python
%%writefile ~/.config/ipymock/config.json
{
  "access_token": "<access_token>"
}
```

## Initialization for Development

### Initialize Zsh for Conda

```python
conda init zsh
```

### Create a Conda Virtual Environment for Jupyter

```python
yes | conda create --name biobot jupyter
```

    ...
      environment location: /usr/local/anaconda3/envs/biobot
      registry file: /Users/saintway/.conda/environments.txt
    done
    
    # To activate this environment, use
    #
    #     $ conda activate biobot
    #
    # To deactivate an active environment, use
    #
    #     $ conda deactivate
    


```python
conda env list
```

    # conda environments:
    
    base                     /usr/local/anaconda3
    biobot                   /usr/local/anaconda3/envs/biobot
    


```python
conda activate biobot
```

---
Install Python pip on Debian

```python
sudo apt install python3-pip
```

```python
pip install 'nbdev==1.*' 'ipymock==1.*' 'flask==2.*' 'discord.py==2.1.*' 'python-dotenv==0.21.*' 'openai==0.25.*' 'PyYAML==6.*' 'dacite==1.6.*'
```

```python
pip show nbdev
```

```python
pip show ipymock
```

---
Install Yarn on macOS

```python
brew install yarn
```

---
Install Git Make Python NodeJS Yarn on Debian

```python
sudo apt install git make python3 nodejs yarn
```

---
Install whatsapp-web.js qrcode-terminal by Yarn

```python
sudo apt install -y gconf-service libgbm-dev libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget
```

```python
yarn add whatsapp-web.js qrcode-terminal
```

```python
conda deactivate
```

### Delete a Conda Virtual Environment for Jupyter

```python
conda env remove --name biobot
```
