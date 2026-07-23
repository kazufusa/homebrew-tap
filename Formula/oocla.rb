class Oocla < Formula
  desc "Ollama- and OpenAI-compatible API server backed by the claude CLI"
  homepage "https://github.com/kazufusa/oocla"
  license "MIT"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.0.0/oocla_1.0.0_darwin_arm64.tar.gz"
      sha256 "b2943b2dcfa4f599ae02494c5fc872795f7cc3ee6924a77f7e5b9cb94ef82b39"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.0.0/oocla_1.0.0_darwin_amd64.tar.gz"
      sha256 "411067927324482c4011e74f3deae7533045dacbad1e7ca08d18f740332955ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazufusa/oocla/releases/download/v1.0.0/oocla_1.0.0_linux_arm64.tar.gz"
      sha256 "3ebc12002b36913e6ce2765b7f76468e4d3ccd1a1fde8d0efb88081bac240f6d"
    end
    on_intel do
      url "https://github.com/kazufusa/oocla/releases/download/v1.0.0/oocla_1.0.0_linux_amd64.tar.gz"
      sha256 "2a4947169bc986c05718d2b52303f65cd979333a1db0362e77d45d2cb1be57ad"
    end
  end

  def install
    bin.install "oocla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oocla version")
  end
end
