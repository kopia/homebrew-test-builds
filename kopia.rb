# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260430.0.152504"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260430.0.152504/kopia-20260430.0.152504-macOS-x64.tar.gz"
    sha256 "fe7bc9c35c58eef0cee59783dca7bff76616ca42cf35522acb44935049c4de4c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260430.0.152504/kopia-20260430.0.152504-macOS-arm64.tar.gz"
    sha256 "11283a80b5f60ec42734ba4eaba048f9553433a934f26db33fd619a1e0baf063"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260430.0.152504/kopia-20260430.0.152504-linux-x64.tar.gz"
    sha256 "f47d35de3802525b7b215cc279cdab8e3c056cab1b6d000de3b3a659c77365b3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260430.0.152504/kopia-20260430.0.152504-linux-arm.tar.gz"
    sha256 "11b250cff60e04dca392ede9a3af4cdd200029cbfc79b39d95ad8c89e319733d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260430.0.152504/kopia-20260430.0.152504-linux-arm64.tar.gz"
    sha256 "facdd258073efda85c0573a8c681bf76a0311a561d77a93ef33ebd7043599000"
  end

  def install
    bin.install "kopia"
  end
end
