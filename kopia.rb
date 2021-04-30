# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210429.0.172152"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210429.0.172152/kopia-20210429.0.172152-macOS-x64.tar.gz"
    sha256 "909d7964ed5e43e20f6504a2d157d960c82803e17ffa56ff5599ef23aa79284e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210429.0.172152/kopia-20210429.0.172152-macOS-arm64.tar.gz"
    sha256 "1458f1c51184ca5c4f3a949b9d0b0453c56e82855d24c7f9ea4ba19876cb0f2c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210429.0.172152/kopia-20210429.0.172152-linux-x64.tar.gz"
    sha256 "15e2eda79dff00d904d877fbde8cf3b76432149aa122f0c4709c68a487a7f416"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210429.0.172152/kopia-20210429.0.172152-linux-arm.tar.gz"
    sha256 "5c5ebe9df2047e7b33a139a93c574b3cbd9a28f62ec52dc2f407bf3c7d7a7af5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210429.0.172152/kopia-20210429.0.172152-linux-arm64.tar.gz"
    sha256 "776e5ac4009b7dfda9926ed8a1cc3e7c7dfc470ab02766efe4f067d7715e5201"
  end

  def install
    bin.install "kopia"
  end
end
