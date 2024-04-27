{ pkgs, ... }: 
{
    programs.home-manager.enable = true;
    home = {
        username = "fwam";
        homeDirectory = "/home/fwam";
        packages = with pkgs; [
            ## General
            thunderbird bitwarden
            ## IM
            (discord.override { withVencord = true; }) 
            tdesktop cinny-desktop
        ];

    };
    
    home.stateVersion = "23.11";
}
