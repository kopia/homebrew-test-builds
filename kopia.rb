# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231212.0.30427"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231212.0.30427/kopia-20231212.0.30427-macOS-x64.tar.gz"
    sha256 "fb109c523339c84ae29e2b00a6fbcaf80906531ce81832892ab7591bdec2c640"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231212.0.30427/kopia-20231212.0.30427-macOS-arm64.tar.gz"
    sha256 "6bf30cb543a4dd325789675bb7d1504efc61a6f19c6b74b9e11a7529458a31cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231212.0.30427/kopia-20231212.0.30427-linux-x64.tar.gz"
    sha256 "59623edcadd1655239f26ce58606571f399dbad22f59067fb25e904f0958db2c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231212.0.30427/kopia-20231212.0.30427-linux-arm.tar.gz"
    sha256 "7083422f580bff09a38fc8436e2ef57966bca879887d03e8ed1ce823ebbe882c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231212.0.30427/kopia-20231212.0.30427-linux-arm64.tar.gz"
    sha256 "2e991867a9e1296046b9f1aa76047df1864450057e858e5ef6443cf286893b43"
  end

  def install
    bin.install "kopia"
  end
end
