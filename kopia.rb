# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211218.0.174445"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.174445/kopia-20211218.0.174445-macOS-x64.tar.gz"
    sha256 "f6d96882348a6c8e41436cec4b25d4e97d32d0f1a462ee09a036c8496639bc44"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.174445/kopia-20211218.0.174445-macOS-arm64.tar.gz"
    sha256 "fd1a55289a8b85a3baa75d1511b8c908a07974bedde069b0806794476bfa0627"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.174445/kopia-20211218.0.174445-linux-x64.tar.gz"
    sha256 "09951b0032c7a59b1259ca15bd8bc0eaa693623cc71fad6b80a090ae899231d8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.174445/kopia-20211218.0.174445-linux-arm.tar.gz"
    sha256 "b0e2eec291396f4a3a4ddab969e9789e63a32f881870721c639206544d029100"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.174445/kopia-20211218.0.174445-linux-arm64.tar.gz"
    sha256 "b496b5a5b85a71c600376d7172f119edea3acf3aa08ef1e1da09b1cdefdb938b"
  end

  def install
    bin.install "kopia"
  end
end
