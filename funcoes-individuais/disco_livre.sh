# FUNCAO
################################################################################################

disco_livre()	{
				################################################################################
				# Essa função formata o comando df removendo devices que não tem importância
				#  durante a execução de scripts, formatando as colunas para a melhor 
				#  visualização.
				# Pode ser passado como parâmetro uma mensagem a ser exibida, caso não exista
				#  uma mensagem será exibida a mensagem padrão.
				# As mensagens sempre serão apresentadas em letras maiúscualas
				#
				#			USO disco_livre [<MENSAGEM>]
				#			
				################################################################################
				if [ -z $1 ]
					then
						printf "MOSTRANDO ESPACO EM DISCO ATUAL\n"
					else
						MENSAGEM=${$1^^}
						printf "%s\n" $MENSAGEM
				fi
				df -h | grep -v overlay | grep -v /dev/loop | grep -v tmpfs | column -t 
				printf "\n" 
			}
			
################################################################################################