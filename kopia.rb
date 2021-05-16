# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210516.0.151523"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151523/kopia-20210516.0.151523-macOS-x64.tar.gz"
    sha256 "56abdb65f36fa7ad62aa962521c92f7f1e964f23394ce73b88726033efa056f8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151523/kopia-20210516.0.151523-macOS-arm64.tar.gz"
    sha256 "16d3a9db50d2c01831d53d51f6921f3b3446afd6df3d1db227273e35ec4f4170"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151523/kopia-20210516.0.151523-linux-x64.tar.gz"
    sha256 "4514647d2225011395f635c346367a58fa45f5ae959980efb3609cee74efa3e2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151523/kopia-20210516.0.151523-linux-arm.tar.gz"
    sha256 "0567db703e90205faf438ff7322a1d41d80a4459c441a69b6cfea687f99ddeb1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151523/kopia-20210516.0.151523-linux-arm64.tar.gz"
    sha256 "90f4cd7cb3f642ee22ba86905096571019caa79f92c0d2af4517b0aa713f8f1a"
  end

  def install
    bin.install "kopia"
  end
end
