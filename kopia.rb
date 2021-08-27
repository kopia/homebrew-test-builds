# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210826.0.182934"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210826.0.182934/kopia-20210826.0.182934-macOS-x64.tar.gz"
    sha256 "ef3add311a6b218f90641b6954a56108e7eda1e2a13a62d46410f613dadea021"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210826.0.182934/kopia-20210826.0.182934-macOS-arm64.tar.gz"
    sha256 "c31dc451c45a319e55de078a9dab17bb611bd1d42d8341efb2f6eafda3bb904f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210826.0.182934/kopia-20210826.0.182934-linux-x64.tar.gz"
    sha256 "4ca44a2443b32e4c0b4829155ccfffe2c342717604969aea1bb1b7cb232229fc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210826.0.182934/kopia-20210826.0.182934-linux-arm.tar.gz"
    sha256 "e9bc155f56e60f6766fb7bf4ba21cb9210b8772d3aa7b11e97f883918759a66c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210826.0.182934/kopia-20210826.0.182934-linux-arm64.tar.gz"
    sha256 "b28543011e430eaaf1abec44c4445458a3eff3faf66bc23e28409be336963a2f"
  end

  def install
    bin.install "kopia"
  end
end
