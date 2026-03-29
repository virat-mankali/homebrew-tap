# typed: false
# frozen_string_literal: true

class LinkedinMcp < Formula
  desc "LinkedIn CLI and MCP tool for humans and AI agents"
  homepage "https://github.com/virat-mankali/linkedin-mcp"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.1/linkedin-mcp_1.0.1_darwin_amd64.tar.gz"
      sha256 "aed65b06f659dda4c72ee8558084729535ff5548e3f6e437f7cf8d1715d1dd40"

      define_method(:install) do
        bin.install "li"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.1/linkedin-mcp_1.0.1_darwin_arm64.tar.gz"
      sha256 "8a70d47de2c37d6c5e5df1a5531af9ce65453f01ca4c9e0d309dd783245488ae"

      define_method(:install) do
        bin.install "li"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.1/linkedin-mcp_1.0.1_linux_amd64.tar.gz"
      sha256 "e27520af396cbee490d3f56ba6ab276dae6ba0a3f545ec93c19c7b753cade97f"
      define_method(:install) do
        bin.install "li"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.1/linkedin-mcp_1.0.1_linux_arm64.tar.gz"
      sha256 "9119a0903d6c602fe495f2273e7cf0a26ef72699ed652a3141f76b8b5fe9988a"
      define_method(:install) do
        bin.install "li"
      end
    end
  end

  test do
    system "#{bin}/li", "--help"
  end
end
