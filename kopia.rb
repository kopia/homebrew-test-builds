# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211111.0.180918"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211111.0.180918/kopia-20211111.0.180918-macOS-x64.tar.gz"
    sha256 "1838a9e762667cf335bdcac29dd29b2023b4704f504f1dd6d9e07cbe2acd7d6e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211111.0.180918/kopia-20211111.0.180918-macOS-arm64.tar.gz"
    sha256 "a55954c92853cb78e7f8562ebae96a27109640aeeb19e8f26ed918757decfb43"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211111.0.180918/kopia-20211111.0.180918-linux-x64.tar.gz"
    sha256 "4f3d737aad6441cae048731354c1374272a53070a02c4de23c19266312d3a8e4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211111.0.180918/kopia-20211111.0.180918-linux-arm.tar.gz"
    sha256 "cc16a62f9e1a3e13caecbf5600dca3a03758843c82f8f0af024d5e885ed34f58"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211111.0.180918/kopia-20211111.0.180918-linux-arm64.tar.gz"
    sha256 "47aa23182f66e0ea8d98275c65997932fa6b81627554f7fcd3ee9aa851822398"
  end

  def install
    bin.install "kopia"
  end
end
