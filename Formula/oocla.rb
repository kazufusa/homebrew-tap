class Oocla < Formula
  desc "Ollama- and OpenAI-compatible API server backed by the claude CLI"
  homepage "https://github.com/kazufusa/oocla"
  license "MIT"
  version "1.3.0"

  on_macos do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.3.0/oocla_1.3.0_darwin_arm64.tar.gz"
      sha256 "b533337e4298e38df7a7a499786f840d1eea67b19acfe48a54a087786c89a16a"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.3.0/oocla_1.3.0_darwin_amd64.tar.gz"
      sha256 "3c3bf074caa0cca0ad030e37307fbc9ef9626e0593e098eff2d93baad14c7b36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.3.0/oocla_1.3.0_linux_arm64.tar.gz"
      sha256 "956b27e463500bc9c30da16a0274269aa819b10e3e021de157c5f3a41ce5bd3f"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.3.0/oocla_1.3.0_linux_amd64.tar.gz"
      sha256 "437b1bc37d7de2fdde6498f6573db710c719c28a891ca13e101098956c216608"
    end
  end

  def install
    bin.install "oocla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oocla version")
  end
end
