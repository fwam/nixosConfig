{ config, ... }: {
    security.sudo.enable = false; # sorry matey i hate you
    security.doas = {
        enable = true;
        extraRules = [ { groups = [ "wheel" ]; keepEnv = true; persist = true; } ];
    };
}
