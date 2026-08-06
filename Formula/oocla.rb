class Oocla < Formula
  desc "Ollama- and OpenAI-compatible API server backed by the claude CLI"
  homepage "https://github.com/kazufusa/oocla"
  license "MIT"
  version "1.4.0"

  on_macos do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.0/oocla_1.4.0_darwin_arm64.tar.gz"
      sha256 "b6185d84136cbfb4997ef61166defe4c0ef5a00dcf40c13dac4f7e4fb6019f5b"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.0/oocla_1.4.0_darwin_amd64.tar.gz"
      sha256 "95abd5ea17ab9e53f85ba5ea42dd9b81bd6e956513f069717249ca9dc6c74ae7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.0/oocla_1.4.0_linux_arm64.tar.gz"
      sha256 "0de9fe6ff57c08cc53dd148cdcfa41dbfeffa2983bd7767041790c77dca10830"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.4.0/oocla_1.4.0_linux_amd64.tar.gz"
      sha256 "9abaf752221efdd9f5dba01e4fc1478b0daf9dd548f8c627ccca5cb9b9cc87ca"
    end
  end

  def install
    bin.install "oocla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oocla version")
  end
end
