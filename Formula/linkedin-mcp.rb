# typed: false
# frozen_string_literal: true

class LinkedinMcp < Formula
  desc "LinkedIn CLI and MCP tool for humans and AI agents"
  homepage "https://github.com/virat-mankali/linkedin-mcp"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.0/linkedin-mcp_1.0.0_darwin_amd64.tar.gz"
      sha256 "8c18305d6bf605ddf71b6b1b2291e469f74d78ed8bdd3726cb58f7e861065152"

      define_method(:install) do
        bin.install "li"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.0/linkedin-mcp_1.0.0_darwin_arm64.tar.gz"
      sha256 "4d37f9caeccbe851e24fbeb91dcaced8f770f26210fe127ae776186ef82a16a5"

      define_method(:install) do
        bin.install "li"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.0/linkedin-mcp_1.0.0_linux_amd64.tar.gz"
      sha256 "35f73624c1ec6447a6ba0d1b88cabd54dd92a4c9aeda728981bb3caa4426a68f"
      define_method(:install) do
        bin.install "li"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.0/linkedin-mcp_1.0.0_linux_arm64.tar.gz"
      sha256 "1c31e90bc2195cf90138a55d21b04ac2bd6a0f036bd9b773de572f8b25f55175"
      define_method(:install) do
        bin.install "li"
      end
    end
  end

  test do
    system "#{bin}/li", "--help"
  end
end
