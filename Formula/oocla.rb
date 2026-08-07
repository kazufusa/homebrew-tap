class Oocla < Formula
  desc "Ollama- and OpenAI-compatible API server backed by the claude CLI"
  homepage "https://github.com/kazufusa/oocla"
  license "MIT"
  version "1.4.2"

  on_macos do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.2/oocla_1.4.2_darwin_arm64.tar.gz"
      sha256 "48fb925b3542ef202d4335352c141c4f94b2e856a69926b91d71f92b3992dff2"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.2/oocla_1.4.2_darwin_amd64.tar.gz"
      sha256 "ae7dc5a64a344261df66442170c6e3ffc8e36c6f760a6931fd3839a7df76c1c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.2/oocla_1.4.2_linux_arm64.tar.gz"
      sha256 "b50b446c5cb2183ec6f8a3e91243082ab6bb929162350370e15c0ad923ea1dd5"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.2/oocla_1.4.2_linux_amd64.tar.gz"
      sha256 "30c931ccd7af205ecd3d863860d2bd61af051c4b73b8b43bb68a72ccbfa6845b"
    end
  end

  def install
    bin.install "oocla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oocla version")
  end
end
