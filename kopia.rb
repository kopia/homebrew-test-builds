# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220906.0.144144"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220906.0.144144/kopia-20220906.0.144144-macOS-x64.tar.gz"
    sha256 "7a5bd450c173850ef40882b9fa4083f7e5a8fa582510f762827cf4890e4e4f13"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220906.0.144144/kopia-20220906.0.144144-macOS-arm64.tar.gz"
    sha256 "0893b0c8a43f4da7b4edd5c802f9e94b0c9aca4c58d9af022a266c3fca462e16"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220906.0.144144/kopia-20220906.0.144144-linux-x64.tar.gz"
    sha256 "bd6b798f7aec978fd2e84117c6bd81064e16eb149293f5eebedbf5db718b9ce5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220906.0.144144/kopia-20220906.0.144144-linux-arm.tar.gz"
    sha256 "3f0ebee465c1ceaa929cbc5220cb999a5145253f05afa297d086b7f01c38895d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220906.0.144144/kopia-20220906.0.144144-linux-arm64.tar.gz"
    sha256 "9c49eb51de07acd8279aa9da90cda9ea6bb6a0119fd6aeaf31f38cbac33a06f1"
  end

  def install
    bin.install "kopia"
  end
end
