class Oocla < Formula
  desc "Ollama- and OpenAI-compatible API server backed by the claude CLI"
  homepage "https://github.com/kazufusa/oocla"
  license "MIT"
  version "1.4.3"

  on_macos do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.3/oocla_1.4.3_darwin_arm64.tar.gz"
      sha256 "6c99d6f3c1d256a16cd87be067b046038e182d621f435c019de6f478856240b0"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.3/oocla_1.4.3_darwin_amd64.tar.gz"
      sha256 "23d222548b1823f9019ce2a6afd18b046bd095d285405062bb457ebf7043327b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.3/oocla_1.4.3_linux_arm64.tar.gz"
      sha256 "74c51a8bd4b4392be35dbba4b5e71de679341e0c1e56b548bc59a1ae085b415f"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.3/oocla_1.4.3_linux_amd64.tar.gz"
      sha256 "6883ec445b22311e520bc063c2b9bec6a2e0b695937fd6278e23e982ea9bdb6f"
    end
  end

  def install
    bin.install "oocla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oocla version")
  end
end
