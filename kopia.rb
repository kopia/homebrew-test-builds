# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250415.0.222157"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250415.0.222157/kopia-20250415.0.222157-macOS-x64.tar.gz"
    sha256 "a753324b38a19e3e7dde779822b35fe7078d129bbbc458752aa7a1bb44cc3982"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250415.0.222157/kopia-20250415.0.222157-macOS-arm64.tar.gz"
    sha256 "6565fcb21e097748f69306c21c5ea0230a2cf22201e7030465cf7bc970db4dd2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250415.0.222157/kopia-20250415.0.222157-linux-x64.tar.gz"
    sha256 "6756cf89a323b1239d96a20764a5434181eddbde419079192962ece0a71fc38b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250415.0.222157/kopia-20250415.0.222157-linux-arm.tar.gz"
    sha256 "4b8968d5ce4fc6ec189d30b69b32e1e4288c696c5f35b9cccad7573a8418bdf9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250415.0.222157/kopia-20250415.0.222157-linux-arm64.tar.gz"
    sha256 "61d2999f261603962d11187b8823cd27d0e8647e289ee9c7b6bc1b7b15ef23cc"
  end

  def install
    bin.install "kopia"
  end
end
