#!/usr/bin/perl



# Usage: /kikoo <nick>

sub cmd_kikoo_nick
{
	# data:		parameters for /kikoo
	# server:	active server in window
	# witem:	active window item (eg. channel, query) or undef if empty
	
	my ($data, $server, $witem) = @_;

	if (!$server || !$server->{connected})
	{
		Irssi::print("Pas connecté à un serveur");
		return;
	}

	if($data)
	{
		# Passage du nick en majuscules
		$nick 	= uc( join(' ', $data) );

		# Sélection de couleurs aléatoires
		do
		{
			$front	= int(rand(13)) + 1;
			$back	= int(rand(13)) + 1;
		}
		until( $front != $back );

		# Sélection d'un nombre aléatoire de symboles
		$xclam	= int(rand(11))+9;
		$oo		= int(rand(11))+4;
		$par	= int(rand(11))+4;

		# Construction du message
		$msg	= "\003$front,$back " 
				. 'KIKOO' . 'O' x $oo
				. " $nick"
				. '!' x $xclam
				. ' :o)' . ')' x $par
				. " \003";

		# Et maintenant, on pourrit le chan avec notre message kikoolol.
		if( $witem &&
			($witem->{type} eq 'CHANNEL' ||
			 $witem->{type} eq 'QUERY'))
		{
			# chan ou query dans la fenêtre active
			$witem->command("MSG " . $witem->{name} . ' ' . $msg);
		}
		else
		{
			Irssi::print("Pas de chan/query actif dans la fenêtre");
		}
	}
}


Irssi::command_bind('kikoo', 'cmd_kikoo_nick');


# vi:ts=4:
