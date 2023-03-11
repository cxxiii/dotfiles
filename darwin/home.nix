{ pkgs, config, ... }:

{
  imports = [ ../programs/zsh ../programs/git ];

  home = {
    packages = with pkgs;
      [
        exa
        ripgrep
        gh
        bat
        jq
        shfmt
        asmfmt
        nixfmt
        shellcheck
        fd
        cmake
        php # Required for Alfred 
        nodejs
        jdk17
        awscli
      ] ++ (with nodePackages; [ aws-cdk pnpm ]);

    sessionVariables = {
      VISUAL = "nvim";
      EDITOR = "nvim";
    };

    stateVersion = "22.11";
  };

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}