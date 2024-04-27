{ pkgs, config, ... }: 
{
    networking.wg-quick.interfaces."wg0" = {
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
