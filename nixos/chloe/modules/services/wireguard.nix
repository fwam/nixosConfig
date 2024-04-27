{ pkgs, config, ... }: 
{
    networking.wg-quick.interfaces."wg0" = {
        postUp = "iptables -w -A FORWARD -i %i -j ACCEPT; iptables -w -A FORWARD -o %i -j ACCEPT; iptables -t nat -A POSTROUTING -o %i -j MASQUERADE";
        postDown = "iptables -w -D FORWARD -i %i -j ACCEPT; iptables -w -D FORWARD -o %i -j ACCEPT; iptables -t nat -D POSTROUTING -o %i -j MASQUERADE";
        privateKeyFile = config.age.secrets.chloeWireguard.path;
        address = [
            "10.21.37.3/24"
        ];
        peers = [
	    {
                publicKey = "1002zlZ5bbey9b9L5825nP7+nzknfCEFX5hr99OO9HU=";
	        allowedIPs = [ "10.21.37.0/24" ];
	        endpoint  = "femdom.solutions:8421";
	    }
        ];
    };
}
