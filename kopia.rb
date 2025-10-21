# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251020.0.233929"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251020.0.233929/kopia-20251020.0.233929-macOS-x64.tar.gz"
    sha256 "9716f88377cf363c25124d3e79cf7927958c5bf47972e3fe4c6b56f463479080"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251020.0.233929/kopia-20251020.0.233929-macOS-arm64.tar.gz"
    sha256 "6e7e62ab91e65d7499726feee8feeda976a259edcb476a9e3138404822f0e801"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251020.0.233929/kopia-20251020.0.233929-linux-x64.tar.gz"
    sha256 "9e79b7d47f412bdd8b32207b073c83540810324b36f35ce7f36c47c0a87007b8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251020.0.233929/kopia-20251020.0.233929-linux-arm.tar.gz"
    sha256 "3db40c5bb3c1982d3187810f864604cc44db8db9e49d20565368d98bbfba4039"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251020.0.233929/kopia-20251020.0.233929-linux-arm64.tar.gz"
    sha256 "ebd996b5f1aa26187be4fab34179483d5703691b38249cec867cfc9bc113e5e0"
  end

  def install
    bin.install "kopia"
  end
end
