# typed: false
# frozen_string_literal: true

class LinkedinMcp < Formula
  desc "LinkedIn CLI and MCP tool for humans and AI agents"
  homepage "https://github.com/virat-mankali/linkedin-mcp"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.2/linkedin-mcp_1.0.2_darwin_amd64.tar.gz"
      sha256 "f787afad75830a5324ca74346f9f84231768e797c7ee518408416ffef6989416"

      define_method(:install) do
        bin.install "li"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.2/linkedin-mcp_1.0.2_darwin_arm64.tar.gz"
      sha256 "9b4bfdfab34f17ce2ef94efab297f56fda0b6da92883ee26904e0adda0b1f310"

      define_method(:install) do
        bin.install "li"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.2/linkedin-mcp_1.0.2_linux_amd64.tar.gz"
      sha256 "0fbe5cc20e495533a549ddcb97abc0f6ab1209c245f4dc41748428f8afd69dc7"
      define_method(:install) do
        bin.install "li"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/virat-mankali/linkedin-mcp/releases/download/v1.0.2/linkedin-mcp_1.0.2_linux_arm64.tar.gz"
      sha256 "98da20cba2a5058dea0a09295069652af24c34bbd3bbf183a6b1ee34f61c29a8"
      define_method(:install) do
        bin.install "li"
      end
    end
  end

  test do
    system "#{bin}/li", "--help"
  end
end
