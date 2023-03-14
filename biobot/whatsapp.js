const http = require('http');
const querystring = require('querystring');
const qrcode = require('qrcode-terminal');

const { Client } = require('whatsapp-web.js');

const client = new Client();

client.on('qr', (qr) => {
    // Generate and scan this code with your phone
    qrcode.generate(qr, {small: true});
});

client.on('ready', () => {
    console.log('Client is ready!');
    console.log('---');
});

client.on('message', msg => {
    const prompt = querystring.escape(msg.body);
    const url = `http://127.0.0.1:5000/${prompt}`;

    http.get(url, (res) => {
        console.log(`Got response: ${res.statusCode}`);

        res.on('data', (chunk) => {
            console.log(`Received data: ${chunk}`);
            if (res.statusCode == 200) {
                msg.reply(`${chunk}`);
            }
        });

        res.on('end', () => {
            console.log('---');
        });
    }).on('error', (err) => {
        console.error(`Got error: ${err.message}`);
        console.log('---');
    });

    console.log('Sent request.');
});

client.initialize();
