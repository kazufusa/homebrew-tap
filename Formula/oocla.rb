class Oocla < Formula
  desc "Ollama- and OpenAI-compatible API server backed by the claude CLI"
  homepage "https://github.com/kazufusa/oocla"
  license "MIT"
  version "1.2.0"

  on_macos do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.2.0/oocla_1.2.0_darwin_arm64.tar.gz"
      sha256 "7e1ecce8d0e222be7ef5188e04201c8661920760b480b8c4f8406792f674ab7f"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.2.0/oocla_1.2.0_darwin_amd64.tar.gz"
      sha256 "2df4eae4d7030b6d955503db487c0f8f09afb66b4aabbb813a17e43f8a65e59c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.2.0/oocla_1.2.0_linux_arm64.tar.gz"
      sha256 "15765c014941edfc16c0f2889667eb96d9a86b24bd16cf4ac149c261026309de"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.2.0/oocla_1.2.0_linux_amd64.tar.gz"
      sha256 "53d3e1751fd810b6fcc9fc201428e8f13f282c985008003a95448c43e828ec65"
    end
  end

  def install
    bin.install "oocla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oocla version")
  end
end
