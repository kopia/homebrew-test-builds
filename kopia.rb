# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220902.0.185501"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220902.0.185501/kopia-20220902.0.185501-macOS-x64.tar.gz"
    sha256 "e98871343cda1d71fd4c9c9d4f665b7fadeabecedb08a3e84527ec3fcea30afa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220902.0.185501/kopia-20220902.0.185501-macOS-arm64.tar.gz"
    sha256 "bf7be9f488148397e5eb09518c1f51cafdcac4c223302b33d9742479f211aa86"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220902.0.185501/kopia-20220902.0.185501-linux-x64.tar.gz"
    sha256 "98677514076114df9d7ffef7c4c5e94dc049c480a960eaf45abb8ef91f4b0eb2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220902.0.185501/kopia-20220902.0.185501-linux-arm.tar.gz"
    sha256 "618b1ba807de2b96a426a628165c00834c8b6ebd2b4b3c7edffd872f4eecdc38"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220902.0.185501/kopia-20220902.0.185501-linux-arm64.tar.gz"
    sha256 "d059c06ee8ea845a65be7e45f8b3aeedf93bf0199028a2b3a732e2826f443433"
  end

  def install
    bin.install "kopia"
  end
end
