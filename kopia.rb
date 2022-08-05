# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220805.0.72430"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220805.0.72430/kopia-20220805.0.72430-macOS-x64.tar.gz"
    sha256 "0145a79111be568a57a14794c2e31b0bf2cdce11b3212756ec177c1943687d3c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220805.0.72430/kopia-20220805.0.72430-macOS-arm64.tar.gz"
    sha256 "7ad669e05e7c6fb8104888cd0bd7ad648a6b82b95dfa563f05cc21bfe1a560cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220805.0.72430/kopia-20220805.0.72430-linux-x64.tar.gz"
    sha256 "6fddc09d54ae493924ae61b04dafa9f6d5def69264d61002ef68afab61f9a4b4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220805.0.72430/kopia-20220805.0.72430-linux-arm.tar.gz"
    sha256 "d82a91d3b5adcce7ce0396c9c30fcb0d43c428a5bac54b24cc81bfc8a629d4d9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220805.0.72430/kopia-20220805.0.72430-linux-arm64.tar.gz"
    sha256 "f9f63ba798a610403a3c62dab4736c749751e33b7413b0367e455a3f1ff20d6e"
  end

  def install
    bin.install "kopia"
  end
end
