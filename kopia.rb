# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231128.0.204225"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231128.0.204225/kopia-20231128.0.204225-macOS-x64.tar.gz"
    sha256 "bfd3b37c88a1177f7a48de718bc7eff86f30a61615f80b999a567877cad5e5fb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231128.0.204225/kopia-20231128.0.204225-macOS-arm64.tar.gz"
    sha256 "ad7b357e70c80fb5b162cb633b8e5babc2f6d61f6e38b7954e262f2c8a75fb41"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231128.0.204225/kopia-20231128.0.204225-linux-x64.tar.gz"
    sha256 "45bddb2b58953ca3bd5b117cd00cf8701856b61cd72f1baef7f4522b92de3f05"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231128.0.204225/kopia-20231128.0.204225-linux-arm.tar.gz"
    sha256 "11b1f4179c44da66b4998eb0fde90b1c05785632a2e861afe29d91eb2de65058"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231128.0.204225/kopia-20231128.0.204225-linux-arm64.tar.gz"
    sha256 "1d1b1c9c1478fde3a8d72a836b2111f9d2a359c5e138ad44e0fa7e4fc2c4782b"
  end

  def install
    bin.install "kopia"
  end
end
