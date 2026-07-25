class Oocla < Formula
  desc "Ollama- and OpenAI-compatible API server backed by the claude CLI"
  homepage "https://github.com/kazufusa/oocla"
  license "MIT"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.1.0/oocla_1.1.0_darwin_arm64.tar.gz"
      sha256 "7691c39f00b02499d2aecaf58e2d608ed233124f9e2b4ecfd6587c3ce7abbd36"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.1.0/oocla_1.1.0_darwin_amd64.tar.gz"
      sha256 "1690172cc3502f21e334d045ec2b6c086f35e4db1ce5f80aa9ca1a66058a53b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.1.0/oocla_1.1.0_linux_arm64.tar.gz"
      sha256 "729946b6379044427d3972ae99aec4c96dfabb9bcf50dfa6b9f8d6e3156544a9"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.1.0/oocla_1.1.0_linux_amd64.tar.gz"
      sha256 "757693fc3962babd628bd7e93a4f8d6b271c2f68c603c60f2cc1d16a906f6c14"
    end
  end

  def install
    bin.install "oocla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oocla version")
  end
end
