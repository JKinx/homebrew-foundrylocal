class Foundrylocal < Formula
  desc "Formula for Foundry Local CLI and Inference Agent installer"
  homepage "https://github.com/microsoft/Foundry-Local"
  url "https://github.com/microsoft/Foundry-Local/releases/download/v0.3.9267/FoundryLocal-osx-arm64-0.3.9267.42993.zip"
  sha256 "95b1747a7e89e8ec690b3fcb6a46bdd4c2fd07faa3c28fcdc98ee842a32f9b8b"


  def install
    libexec.install "bin/foundry"
    libexec.install "bin/libonnxruntime-genai.dylib"
    libexec.install "bin/libonnxruntime.dylib"
    libexec.install "bin/Inference.Service.Agent"
    libexec.install "bin/appsettings.json"

    (bin/"foundry").write <<~EOS
      #!/bin/bash
      exec "#{libexec}/foundry" "$@"
    EOS

    chmod 0755, bin/"foundry"
  end
end
