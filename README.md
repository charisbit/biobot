# BioGPT Chatbot

A BioGPT-powered Discord and WhatsApp chatbot built with [nbdev](https://nbdev.fast.ai/).

## Features

- 🤖 **Discord Bot** - AI-powered chatbot for Discord servers
- 📱 **WhatsApp Bot** - AI-powered chatbot for WhatsApp
- 🧬 **BioGPT Integration** - Powered by OpenAI GPT models
- 🔐 **Secure Credentials** - Environment-based configuration

## Quick Start

### Prerequisites

- Python 3.12+
- Discord Bot Token
- OpenAI API Key
- WhatsApp account (for WhatsApp Web automation)

### Installation

```bash
# Clone the repository
git clone https://github.com/charisbit/biobot.git
cd biobot

# Install dependencies
pip install -e .
```

### Configuration

Create a `.env` file:

```bash
cp .env.example .env
```

Edit `.env` with your credentials:

```bash
# Discord Bot
DISCORD_BOT_TOKEN=your_discord_bot_token_here

# OpenAI
OPENAI_API_KEY=your_openai_api_key_here
```

### Running the Bots

**Discord Bot:**

```bash
python -m biobot.discord
```

**WhatsApp Bot:**

```bash
python -m biobot.whatsapp
```

## Project Structure

```
biobot/
├── notebooks/              # nbdev notebooks (source of truth)
├── biobot/                # Generated Python package
│   ├── __init__.py
│   ├── discord.py        # Discord bot
│   └── whatsapp.py       # WhatsApp bot
├── docs/                  # Generated documentation
├── .env.example          # Environment template
├── settings.ini           # nbdev settings
└── README.md
```

## Development

This project uses [nbdev](https://nbdev.fast.ai/) for development. Changes should be made in the `notebooks/` directory, then exported to Python modules.

```bash
# Install nbdev
pip install nbdev

# Sync notebooks to Python modules
nbdev_update_lib

# Build documentation
nbdev_build_docs
```

## License

Apache License 2.0
