
init-biobot-whatsapp:
	@sudo cp biobot-whatsapp-body.service /etc/systemd/system/
	@sudo cp biobot-whatsapp-mind.service /etc/systemd/system/
	@sudo systemctl daemon-reload
	@sudo systemctl enable biobot-whatsapp-body.service
	@sudo systemctl enable biobot-whatsapp-mind.service

del-biobot-whatsapp:
	@sudo rm /etc/systemd/system/biobot-whatsapp-body.service
	@sudo rm /etc/systemd/system/biobot-whatsapp-mind.service
	@sudo systemctl daemon-reload
	@sudo systemctl disable biobot-whatsapp-body.service
	@sudo systemctl disable biobot-whatsapp-mind.service

restart-biobot-whatsapp:
	@sudo systemctl restart biobot-whatsapp-body.service
	@sudo systemctl restart biobot-whatsapp-mind.service

stop-biobot-whatsapp:
	@sudo systemctl stop biobot-whatsapp-body.service
	@sudo systemctl stop biobot-whatsapp-mind.service
