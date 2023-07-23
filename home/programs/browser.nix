{ config, lib, pkgs, ...}:

{
  programs = {
    chromium = {
      enable = true;

      commandLineArgs = ["--enable-features-TouchpadOverscrollHistoryNavigstion"];
      extensions = [
        {id = "cdonnmffkdaoajfknoeeecmchibpmkmg";}# 沙拉查词
	{id = "cjpalhdlnbpafiamejdnhcphjbkeiagm";}# ublock origin
        {id = "nngceckbapebfimnlniiiahkandclblb";}# bitwarden
	{id = "lpfemeioodjbpieminkklglpmhlngfcn";}# webchatgpt
	{id = "ojnbohmppadfgpejeebfnmnknjdlckgj";}# AIPRM for ChatGPT
	
      ];
      
    };
     
    firefox = {
      enable = true;

    };  

  };

}



