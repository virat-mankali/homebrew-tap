# typed: false
# frozen_string_literal: true

class LinkedinMcp < Formula
  desc "LinkedIn CLI and MCP tool for humans and AI agents"
  homepage "https://github.com/virat-mankali/linkedin-mcp"
  version "1.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.5/linkedin-mcp_1.0.5_darwin_amd64.tar.gz"
      sha256 "7162d1d129333ba93c102eec00c67e70da3a9b771f686a0e5458cad477e9fa3e"

      define_method(:install) do
        bin.install "li"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.5/linkedin-mcp_1.0.5_darwin_arm64.tar.gz"
      sha256 "e98168bf23112632b840bcdda14d42ddb312960ba2f041697e6967faaea373ee"

      define_method(:install) do
        bin.install "li"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.5/linkedin-mcp_1.0.5_linux_amd64.tar.gz"
      sha256 "f86bf979f7e2f2bd91c7c91524548e083f07b25d0d193c890298cbdbcbd74aa0"
      define_method(:install) do
        bin.install "li"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.5/linkedin-mcp_1.0.5_linux_arm64.tar.gz"
      sha256 "087144e791eaaa6f01f3569ce8dade13b56415113f8b51e56b7bcc974154b82e"
      define_method(:install) do
        bin.install "li"
      end
    end
  end

  test do
    system "#{bin}/li", "--help"
  end
end
