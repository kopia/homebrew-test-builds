# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261110.0.194521"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.194521/kopia-20261110.0.194521-macOS-x64.tar.gz"
    sha256 "775dd3f020b1788d11f007360709484cdeaecf389dbc095651e0ba7c194619ce"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.194521/kopia-20261110.0.194521-macOS-arm64.tar.gz"
    sha256 "bbf6ff131a2659d3cc1e2a184ce8be6521f5e836a6fd01eb0edd3e813341627e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.194521/kopia-20261110.0.194521-linux-x64.tar.gz"
    sha256 "31a8b6bd0dbd32120bc472f852a31acb0b56396da1bfdc3fc8efe715b90aae3f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.194521/kopia-20261110.0.194521-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.194521/kopia-20261110.0.194521-linux-arm64.tar.gz"
    sha256 "494322fa573f5a4dac28d35a6c82b81dea6ec45fffd5bff7617b8c9e883d6a63"
  end

  def install
    bin.install "kopia"
  end
end
