{ config, ... }: {
    programs.starship = {
        enable = true;
        enableZshIntegration = true;
    };
    
    programs.zoxide = {
        enable = true;
        enableZshIntegration = true;
    };
    
    programs.eza = {
        enable = true;
        enableZshIntegration = true;
    };
    
    programs.tmux = {
        enable = true;
    };
}
