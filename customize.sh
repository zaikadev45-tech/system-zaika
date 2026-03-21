#!/system/bin/bash

# Verificar pastas de audio
if [ -d "/system/media/audio" ]; then

	ui_print "[+] celular tem pasta audio"

	if [ -d "/system/media/audio/notifications" ]; then
		ui_print "[+] Notificações ativadas"
	else
		ui_print "[-] Celular não tem suporte ainda a notificações..."
	fi
	
	#comentario aqui só para deixar bonito
	
	if [ -d "/system/media/audio/ui" ]; then
		ui_print "[+] audios de sistema ativado"
	else
		ui_print "[-] celular não tem suporte ainda a audio UI"
	fi
fi
