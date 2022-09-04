# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220904.0.184354"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220904.0.184354/kopia-20220904.0.184354-macOS-x64.tar.gz"
    sha256 "cd4d996687eec9e13403e3a3a6806e5793d0b892be51e529dd6ff719aa1b4e37"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220904.0.184354/kopia-20220904.0.184354-macOS-arm64.tar.gz"
    sha256 "a9c16a4532d3b54b5b1497c766ecdc5d12e6ef41e39303405a82726b9d4a0b5f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220904.0.184354/kopia-20220904.0.184354-linux-x64.tar.gz"
    sha256 "6f206a08f5789c0c765061a0201596456834146f4585d16a73a58aab8ee7fe7e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220904.0.184354/kopia-20220904.0.184354-linux-arm.tar.gz"
    sha256 "ab282127f30a7fc4fcb6b64849ff7b68da52531e30787df56272b1c587f2a5df"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220904.0.184354/kopia-20220904.0.184354-linux-arm64.tar.gz"
    sha256 "95f70320d57c32cfd6605d6d16ffa4c945b50ac0d6eda50f03889bd1a77c097d"
  end

  def install
    bin.install "kopia"
  end
end
