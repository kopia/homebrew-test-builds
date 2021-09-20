# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210919.0.211819"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.211819/kopia-20210919.0.211819-macOS-x64.tar.gz"
    sha256 "9e259bf9ca843cfcfa095ea59b2072684a1b54e8e9a4aa3695c0956aeb8f4250"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.211819/kopia-20210919.0.211819-macOS-arm64.tar.gz"
    sha256 "c88502244794b63c900aefacc5bfe9142081d847bd23481075d8636fdb01ae49"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.211819/kopia-20210919.0.211819-linux-x64.tar.gz"
    sha256 "8b59ebdb71508c84a43629becde4c355d258cab2e5c695e725d5a956e9dcdfd0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.211819/kopia-20210919.0.211819-linux-arm.tar.gz"
    sha256 "28b943b0c68aa79fb56aba0c3e08b7467862c2d488f7e881b438355a99673441"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.211819/kopia-20210919.0.211819-linux-arm64.tar.gz"
    sha256 "e0c8d49dbec8c9d8471740c883964497d19836ec0c468f25f9b9e043ef7462d6"
  end

  def install
    bin.install "kopia"
  end
end
