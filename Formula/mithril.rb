class Mithril < Formula
  desc "Multi-model orchestration engine. Combine LLM providers into one Ollama-compatible API."
  homepage "https://github.com/GiacomoSaccaggi/Mithril"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/GiacomoSaccaggi/Mithril/releases/download/v1.1.0/mithril-macos-arm64.tar.gz"
      sha256 "158e16e3548592c4de13588cfe0d949f6c98e1129d7d15770855bfc25da70377"
    end
    on_intel do
      url "https://github.com/GiacomoSaccaggi/Mithril/releases/download/v1.1.0/mithril-macos-x64.tar.gz"
      sha256 "aaccb99b2b18d3dc52b95ad60b096257558cbe07597b3e63def9013ad0236c34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GiacomoSaccaggi/Mithril/releases/download/v1.1.0/mithril-linux-arm64.tar.gz"
      sha256 "ab2439c35a66bb6c5d0caef312f2ec5ea221dfc7428ad3840b95d45f6086bf8b"
    end
    on_intel do
      url "https://github.com/GiacomoSaccaggi/Mithril/releases/download/v1.1.0/mithril-linux-x64.tar.gz"
      sha256 "1a815422e35a0c5df73b791c40e36f4024cbb3eeb4185623d8402d04e01e4da1"
    end
  end

  def install
    bin.install "mithril"
  end

  test do
    assert_match "mithril 1.1.0", shell_output("#{bin}/mithril --version")
  end
end
