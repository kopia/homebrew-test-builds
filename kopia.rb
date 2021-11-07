# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211107.0.85925"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211107.0.85925/kopia-20211107.0.85925-macOS-x64.tar.gz"
    sha256 "73ebfb54587da94fff3cee202bc64f06224b3725d50e12ece557730b32c5293a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211107.0.85925/kopia-20211107.0.85925-macOS-arm64.tar.gz"
    sha256 "569e948d629378cc73dbfff64d8324f7b5ecf0edda9b951c550732d20484567a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211107.0.85925/kopia-20211107.0.85925-linux-x64.tar.gz"
    sha256 "7c2a6b8a99155562d6d4f1ddde26b66d7759b5337cbeea8b1e679c801040c2cb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211107.0.85925/kopia-20211107.0.85925-linux-arm.tar.gz"
    sha256 "c0cc8360119e940618587286b7a959ceeacb11ab1c608d7296496285e8a74901"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211107.0.85925/kopia-20211107.0.85925-linux-arm64.tar.gz"
    sha256 "cf29ec776a400506b5e0d60b3de67e7e49637780c54b630aa7a6f61ab443ba5d"
  end

  def install
    bin.install "kopia"
  end
end
