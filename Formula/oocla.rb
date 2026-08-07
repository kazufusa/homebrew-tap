class Oocla < Formula
  desc "Ollama- and OpenAI-compatible API server backed by the claude CLI"
  homepage "https://github.com/kazufusa/oocla"
  license "MIT"
  version "1.4.1"

  on_macos do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.1/oocla_1.4.1_darwin_arm64.tar.gz"
      sha256 "86a7f25929a9d6764858b2d985f4cd58a9d8a10ec881422771ffea5327ee7a8e"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.1/oocla_1.4.1_darwin_amd64.tar.gz"
      sha256 "2eba4c36e8fc8c52f6d0aa0e6d770c23465e2c0e0de1c90ecde30bee67f0a39a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.1/oocla_1.4.1_linux_arm64.tar.gz"
      sha256 "c1fb131dc5505e941f71e90d52ad9c2fc17b60b6a7c86d4a9a937af6e7184fa8"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.1/oocla_1.4.1_linux_amd64.tar.gz"
      sha256 "2731a8e7d536adbc5f231f646dd090b95e4847114ef5c0fb106b5f7be7772dd7"
    end
  end

  def install
    bin.install "oocla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oocla version")
  end
end
