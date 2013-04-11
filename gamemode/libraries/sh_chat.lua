	local Paranoia = Paranoia
	Paranoia.Chat = {}

	if ( CLIENT ) then
		Paranoia.Chat.AddText = function( data )
			chat.AddText( Color( 200, 0 , 0 ), "[Paranoia] ", Color( 230, 230, 230), data:ReadString() )
			chat.PlaySound()
		end
		usermessage.Hook( "Paranoia.Chat.AddText", Paranoia.Chat.AddText )
	end
	
	if ( SERVER ) then
		Paranoia.Chat.AddText = function( text, players )
			umsg.Start( "Paranoia.Chat.AddText", players )
				umsg.String( text )
			umsg.End()
		end
	end
	
	
	