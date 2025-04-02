# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250402.0.154032"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250402.0.154032/kopia-20250402.0.154032-macOS-x64.tar.gz"
    sha256 "333b55e367e0c479082cf698657db4a0b83f59507c0b3d659865105a45304e7a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250402.0.154032/kopia-20250402.0.154032-macOS-arm64.tar.gz"
    sha256 "ddb96fc9d297b2996175d51c34dde814d197f34015afd75ca03bd73131f897a8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250402.0.154032/kopia-20250402.0.154032-linux-x64.tar.gz"
    sha256 "062dd1bee4eca6b0a8926fe800d71f7da15231f03bc50dd0a360dd153177327a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250402.0.154032/kopia-20250402.0.154032-linux-arm.tar.gz"
    sha256 "46adddfd4b8b8aa77f61280f6891c4cc71d39daa2649113bf33454a57228acc1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250402.0.154032/kopia-20250402.0.154032-linux-arm64.tar.gz"
    sha256 "0b7687f8d37f464d061bd4b7f550d672a50bd47368137f129a9e4fb3457b3496"
  end

  def install
    bin.install "kopia"
  end
end
