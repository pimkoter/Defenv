{
  pkgs,
  ...
}:

{
  packages = [
    pkgs.git
  ];

  git-hooks = {
    enable = true;
    hooks = {
      # General hygiene
      check-merge-conflicts.enable = true;
      check-added-large-files.enable = true;
      end-of-file-fixer.enable = true;
      trim-trailing-whitespace.enable = true;
      detect-private-keys.enable = true;
    };
  };

  languages = {
  };
}
