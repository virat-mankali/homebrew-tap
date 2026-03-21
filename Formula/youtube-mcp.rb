# typed: false
# frozen_string_literal: true

class YoutubeMcp < Formula
  desc "YouTube CLI and MCP tool for humans and AI agents"
  homepage "https://github.com/virat-mankali/youtube-mcp"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/virat-mankali/youtube-mcp/releases/download/v1.0.0/youtube-mcp_1.0.0_darwin_amd64.tar.gz"
      sha256 "59403ac055d3698506f1c8f07fb2ed12ee1ee0df0b8929965d6054b59a3a5ead"

      define_method(:install) do
        bin.install "yt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/virat-mankali/youtube-mcp/releases/download/v1.0.0/youtube-mcp_1.0.0_darwin_arm64.tar.gz"
      sha256 "94a3c3e16f3ab4cdc9b093e7d2a738467fe0218bdc5fe19bc1b0d705acc625b3"

      define_method(:install) do
        bin.install "yt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/youtube-mcp/releases/download/v1.0.0/youtube-mcp_1.0.0_linux_amd64.tar.gz"
      sha256 "f273ac5f0438ed1ac8bf802131c5cfb356ef883ef9314571fcef52d3698e1000"
      define_method(:install) do
        bin.install "yt"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/youtube-mcp/releases/download/v1.0.0/youtube-mcp_1.0.0_linux_arm64.tar.gz"
      sha256 "d82b2a3454e405ac5a96581394214b19f21647bdb3a0302c51420f202715b736"
      define_method(:install) do
        bin.install "yt"
      end
    end
  end

  test do
    system "#{bin}/yt", "--help"
  end
end
