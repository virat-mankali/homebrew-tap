# typed: false
# frozen_string_literal: true

class LinkedinMcp < Formula
  desc "LinkedIn CLI and MCP tool for humans and AI agents"
  homepage "https://github.com/virat-mankali/linkedin-mcp"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.4/linkedin-mcp_1.0.4_darwin_amd64.tar.gz"
      sha256 "9fdbe1eeedca21374e4a9dd228301eb31a1c4c56c1d1688162d1c7e894f85dad"

      define_method(:install) do
        bin.install "li"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.4/linkedin-mcp_1.0.4_darwin_arm64.tar.gz"
      sha256 "7e347402a4ead58a3da75cbd8081b2f38abadc080f305fc2f2c361e35ac918ad"

      define_method(:install) do
        bin.install "li"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.4/linkedin-mcp_1.0.4_linux_amd64.tar.gz"
      sha256 "ad49d9d8c2fea12ab1b79fdeddbfd560f5b12987cd1384f0265394e9a126c84c"
      define_method(:install) do
        bin.install "li"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.4/linkedin-mcp_1.0.4_linux_arm64.tar.gz"
      sha256 "f7b5f00fc041eed9dbebf52f60d5af801998bc7e3dc96807b09d28481ff210dc"
      define_method(:install) do
        bin.install "li"
      end
    end
  end

  test do
    system "#{bin}/li", "--help"
  end
end
