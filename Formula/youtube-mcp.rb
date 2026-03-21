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
      sha256 "8d89eb83469f862b5e3d061b0f720521e60a104012daff9e7a81ddee211b8abe"

      define_method(:install) do
        bin.install "yt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/virat-mankali/youtube-mcp/releases/download/v1.0.0/youtube-mcp_1.0.0_darwin_arm64.tar.gz"
      sha256 "6ac657e6a72d62af730e5cd234a139ae3edc404e7104b90be8aea7cac1bde713"

      define_method(:install) do
        bin.install "yt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/youtube-mcp/releases/download/v1.0.0/youtube-mcp_1.0.0_linux_amd64.tar.gz"
      sha256 "3677ef89a4f7cfd1179e1308b6e4779b5130d8039d8def08bf54e1026c5bb660"
      define_method(:install) do
        bin.install "yt"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/youtube-mcp/releases/download/v1.0.0/youtube-mcp_1.0.0_linux_arm64.tar.gz"
      sha256 "e9796929ffe207f9351e4ee1e3acae3182fdc949d9b34e968cda191226dc0d10"
      define_method(:install) do
        bin.install "yt"
      end
    end
  end

  test do
    system "#{bin}/yt", "--help"
  end
end
