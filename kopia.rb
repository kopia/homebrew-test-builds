# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230902.0.182321"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230902.0.182321/kopia-20230902.0.182321-macOS-x64.tar.gz"
    sha256 "1cba58f00c9f94c7a20bfb84e0dbc708ffe695b1fe17cc077fb2810e44bb3520"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230902.0.182321/kopia-20230902.0.182321-macOS-arm64.tar.gz"
    sha256 "b97708277c531db7be730b8e1c0ede4b2713dbb64e35cd2e1847505a73fdd270"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230902.0.182321/kopia-20230902.0.182321-linux-x64.tar.gz"
    sha256 "490c1faa2742938f145ab437972415ec0e0b183bff5752ccaa4f07170e89c5b3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230902.0.182321/kopia-20230902.0.182321-linux-arm.tar.gz"
    sha256 "3719ed9886837fe34c64adb005bc0ddafce2a427820df98c626a5b7dd1a08cb4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230902.0.182321/kopia-20230902.0.182321-linux-arm64.tar.gz"
    sha256 "5cc390d44328855c453381d007860e6ab0d2fc98cd529cc152464aea9733fc31"
  end

  def install
    bin.install "kopia"
  end
end
