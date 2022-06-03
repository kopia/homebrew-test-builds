# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220603.0.154417"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.154417/kopia-20220603.0.154417-macOS-x64.tar.gz"
    sha256 "4dd6dcc824c9aa6131884e6b82f15911f4092d2ff9b9a9bbd3ab0f98248d2738"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.154417/kopia-20220603.0.154417-macOS-arm64.tar.gz"
    sha256 "58bf5f29ee7813c1835c526c4383322594c06080e08a25ed303a4d08ff876aa5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.154417/kopia-20220603.0.154417-linux-x64.tar.gz"
    sha256 "5349c58263abbc242a6574729d19368e2c8133c81cf93efd1dfcb9d9c358812c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.154417/kopia-20220603.0.154417-linux-arm.tar.gz"
    sha256 "1fc8e689b2b9ccfe760dd829b0e79ae0b1428e3f97ec322a50607f61780333e2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220603.0.154417/kopia-20220603.0.154417-linux-arm64.tar.gz"
    sha256 "a62a9a72bea26d6cdfc249a5d750f0e3ee36503f76f04d1baf981a4659d5bbe3"
  end

  def install
    bin.install "kopia"
  end
end
