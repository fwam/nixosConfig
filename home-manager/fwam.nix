{ pkgs, ... }: 
{
    imports = [ ./modules ];
    programs.home-manager.enable = true;
    home = {
        username = "fwam";
        homeDirectory = "/home/fwam";
        packages = with pkgs; [
            ## General
            thunderbird bitwarden emacs
            ## Admin shite
            google-cloud-sdk kubernetes terraform ansible
            ## IM
            (discord.override { withVencord = true; }) 
            tdesktop element-desktop 
        ];

    };
    services.emacs.enable = true;    
    home.stateVersion = "23.11";
}
