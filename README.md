# BioBot

A powerful chatbot powered by BioGPT that works seamlessly across Discord and WhatsApp platforms. BioBot provides intelligent conversational AI capabilities with support for biomedical and general purpose conversations.

## Features

- 🤖 BioGPT-powered conversational AI
- 💬 Discord bot integration
- 📱 WhatsApp bot support
- 🔧 Easy configuration and deployment
- 🛡️ Built-in moderation capabilities

## Quick Start

### Installation

Install BioBot using pip:

```bash
pip install biobot
```

### Discord Bot Setup

1. Set your Discord bot credentials as environment variables
2. Launch the Discord chatbot:

```bash
python -m biobot.discord
```

### WhatsApp Bot Setup

1. Create the configuration directory:

```bash
mkdir -p ~/.config/ipymock
```

2. Get your access token from [OpenAI Chat](https://chat.openai.com/api/auth/session)

3. Create the configuration file:

```bash
cat > ~/.config/ipymock/config.json << EOF
{
  "access_token": "<your_access_token_here>"
}
EOF
```

4. Run the WhatsApp bot:

```bash
python -m biobot.whatsapp
```

## Development Setup

### Prerequisites

- Python 3.6+
- Node.js and Yarn (for WhatsApp functionality)
- Conda (recommended for environment management)

### Environment Setup

1. Create and activate a conda environment:

```bash
conda create --name biobot python=3.8 jupyter
conda activate biobot
```

2. Install dependencies:

```bash
pip install -e .
```

### System Dependencies

#### For Debian/Ubuntu:

```bash
# Install system packages
sudo apt update
sudo apt install git make python3-pip nodejs yarn

# Install WhatsApp web dependencies
sudo apt install -y gconf-service libgbm-dev libasound2 libatk1.0-0 libc6 libcairo2 \
  libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 \
  libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 \
  libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 \
  libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates \
  fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget
```

#### For macOS:

```bash
brew install yarn
```

### JavaScript Dependencies

Install WhatsApp web dependencies:

```bash
yarn install
```

## Configuration

Create environment variables for your bot credentials:

```bash
# Discord Bot Token
export DISCORD_TOKEN="your_discord_bot_token"

# OpenAI API Key (if using OpenAI instead of local model)
export OPENAI_API_KEY="your_openai_api_key"
```

## Usage Examples

### Basic Discord Integration

```python
from biobot.discord import DiscordBot

bot = DiscordBot()
bot.run()
```

### WhatsApp Integration

```python
from biobot.whatsapp import WhatsAppBot

bot = WhatsAppBot()
bot.start()
```

## Project Structure

```
biobot/
├── biobot/           # Main package
│   ├── discord.py    # Discord bot implementation
│   ├── whatsapp.py   # WhatsApp bot implementation
│   ├── base.py       # Base bot functionality
│   ├── completion.py # AI completion handling
│   └── moderation.py # Content moderation
├── notebooks/        # Jupyter notebooks for development
├── docs/            # Documentation
└── tests/           # Test files
```

## License

This project is licensed under the Apache Software License 2.0.

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## Support

For issues and questions, please visit the [GitHub repository](https://github.com/seii-saintway/biobot).

---

*BioBot - Bringing intelligent conversation to your favorite platforms*
