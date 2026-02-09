{
  lib,
  stdenvNoCC,
  versionCheckHook,
  nodejs,
}:

stdenvNoCC.mkDerivation rec {
  pname = "css-variables-language-server";
  version = "2.8.3";

  src = builtins.fetchurl {
    url = "https://registry.npmjs.org/css-variables-language-server/-/css-variables-language-server-${version}.tgz";
    sha256 = "sha256-0pmmq0cxd240gsv4zyhz9x22y75qpb8p30x8vd0k4rxl3w28dv7x";
  };

  installPhase = ''
    runHook preInstall

    mkdir $out
    mv bin dist package.json $out/

    runHook postInstall
  '';

  buildInputs = [ nodejs ];

  doInstallCheck = true;
  versionCheckProgramArg = "--version";
  nativeInstallCheckInputs = [ versionCheckHook ];

  meta = {
    description = "Language server with improved support for SCSS, Sass indented and SassDoc";
    homepage = "https://github.com/wkillerud/some-sass/tree/main/packages/language-server";
    changelog = "https://github.com/wkillerud/some-sass/releases/tag/some-sass-language-server@${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ congee ];
    mainProgram = "css-variables-language-server";
  };
}
