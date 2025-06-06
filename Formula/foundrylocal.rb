class Foundrylocal < Formula
  desc "Formula for Foundry Local CLI and Inference Agent installer"
  homepage "https://github.com/microsoft/Foundry-Local"
  url "https://github.com/microsoft/Foundry-Local/releases/download/v0.3.9267/FoundryLocal-osx-arm64-0.3.9267.42993.zip"
  sha256 "95b1747a7e89e8ec690b3fcb6a46bdd4c2fd07faa3c28fcdc98ee842a32f9b8b"


  def install
    prefix.install Dir["bin/foundry"]
    prefix.install Dir["bin/Inference.Service.Agent"]
    prefix.install Dir["bin/libonnxruntime-genai.dylib"]
    prefix.install Dir["bin/libonnxruntime.dylib"]
    prefix.install Dir["bin/appsettings.json"]
 
    bin.install_symlink prefix/"foundry"
  end
end
