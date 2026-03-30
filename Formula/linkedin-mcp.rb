# typed: false
# frozen_string_literal: true

class LinkedinMcp < Formula
  desc "LinkedIn CLI and MCP tool for humans and AI agents"
  homepage "https://github.com/virat-mankali/linkedin-mcp"
  version "1.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.6/linkedin-mcp_1.0.6_darwin_amd64.tar.gz"
      sha256 "305c024326bcc9eb543e58ed9861fa05288d04a942a48cddf30bde7d84608376"

      define_method(:install) do
        bin.install "li"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.6/linkedin-mcp_1.0.6_darwin_arm64.tar.gz"
      sha256 "f9e867b19791682101a394777c9821b95759fe181c0913671b43d5a361953168"

      define_method(:install) do
        bin.install "li"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.6/linkedin-mcp_1.0.6_linux_amd64.tar.gz"
      sha256 "6581d6b2b90655b4d670ae711faab3e62c3ad962e069940bf7a5033f11bb0603"
      define_method(:install) do
        bin.install "li"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.6/linkedin-mcp_1.0.6_linux_arm64.tar.gz"
      sha256 "9158d895bdc59733f6ec94e4a64ec1fb8d3b0800d6ee582fad138b5b897b8b86"
      define_method(:install) do
        bin.install "li"
      end
    end
  end

  test do
    system "#{bin}/li", "--help"
  end
end
