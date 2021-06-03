# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210602.0.231230"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210602.0.231230/kopia-20210602.0.231230-macOS-x64.tar.gz"
    sha256 "22b033dd78c14bbcea53a3ed9c36ad2cda4747bbbac49ef1689556de414a0c36"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210602.0.231230/kopia-20210602.0.231230-macOS-arm64.tar.gz"
    sha256 "6c5ae9ef80bcb8d382fb84a791f3e4cd9af9650e17bd6dd4eaccee7dbde2862d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210602.0.231230/kopia-20210602.0.231230-linux-x64.tar.gz"
    sha256 "99ccabb75f80a65edc22b5fb371636ea380be23ea1844d93993b92fe67b441a4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210602.0.231230/kopia-20210602.0.231230-linux-arm.tar.gz"
    sha256 "809d4f95c280fbe5ccd49322f42226bdeee95082c5768e36b6746a8485365219"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210602.0.231230/kopia-20210602.0.231230-linux-arm64.tar.gz"
    sha256 "6d7ba2f79c439be1debf6edfe92ebfef1a1be78d423d301af5fbe93ae8e471ff"
  end

  def install
    bin.install "kopia"
  end
end
