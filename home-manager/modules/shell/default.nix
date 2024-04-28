{ config, ... }: {
    programs.zsh = {
        enable = true;
        initExtra = ''
        bindkey "^[[1;5C" forward-word
        bindkey "^[[1;5D" backward-word
        ''; 
        
        shellAliases = {
            cd = "z";
            cat = "bat";
            python3 = "python";
            tf = "terraform";
            k8s = "kubectl";
        };
    };

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
