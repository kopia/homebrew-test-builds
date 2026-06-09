# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260609.0.608"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260609.0.608/kopia-20260609.0.608-macOS-x64.tar.gz"
    sha256 "0858aa50055f82909365f03836b0a2057533523004488d3fed50cdfed9cc123c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260609.0.608/kopia-20260609.0.608-macOS-arm64.tar.gz"
    sha256 "f72ef8352c6fb799aff596d6da72c73adae709c6ec59ccdecafbab0006a2c488"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260609.0.608/kopia-20260609.0.608-linux-x64.tar.gz"
    sha256 "52ce4a41d3c8dba1e998046c6bb720844dd6906ed02bdc51843b00bfb49e0d96"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260609.0.608/kopia-20260609.0.608-linux-arm.tar.gz"
    sha256 "98edd52717ed4e72d85bcf9044cc50b26be437e2724c5bc9bf3c12d945302f87"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260609.0.608/kopia-20260609.0.608-linux-arm64.tar.gz"
    sha256 "fa35437440b3946ba7516850f9b6f1753bc65f0d7b81fb597041504fc644c619"
  end

  def install
    bin.install "kopia"
  end
end
