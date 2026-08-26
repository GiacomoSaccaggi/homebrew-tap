class Mithril < Formula
  desc "Multi-model orchestration engine. Combine LLM providers into one Ollama-compatible API."
  homepage "https://github.com/GiacomoSaccaggi/Mithril"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/GiacomoSaccaggi/Mithril/releases/download/v0.3.0/mithril-macos-arm64.tar.gz"
      sha256 "" # Will be filled after release builds
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GiacomoSaccaggi/Mithril/releases/download/v0.3.0/mithril-linux-x64.tar.gz"
      sha256 "" # Will be filled after release builds
    end
  end

  def install
    bin.install "mithril"
  end

  test do
    assert_match "mithril 0.3.0", shell_output("#{bin}/mithril --version")
  end
end
