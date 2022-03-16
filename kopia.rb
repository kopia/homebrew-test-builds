# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220316.0.80050"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.80050/kopia-20220316.0.80050-macOS-x64.tar.gz"
    sha256 "51544e28805d05b97cc16f240ac4c53956602ad608ab73d99108e9acb5494895"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.80050/kopia-20220316.0.80050-macOS-arm64.tar.gz"
    sha256 "ecd94af940669e70234d7f7625818a97fe3a2c014fb57a7e3d16f68435581110"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.80050/kopia-20220316.0.80050-linux-x64.tar.gz"
    sha256 "7c585e610ce4742fb56a6de491dee5ea4b0a78f0966a3c4c9b317ba5b03a7f19"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.80050/kopia-20220316.0.80050-linux-arm.tar.gz"
    sha256 "2c78a689607a679d5dd83e6974bf66a8d71b90413fcd4346a3fdbfd322b878a9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.80050/kopia-20220316.0.80050-linux-arm64.tar.gz"
    sha256 "457a4b2680174060d2bcc3f59191c323e9f1309c990a49a3469b0a9a5ad336ac"
  end

  def install
    bin.install "kopia"
  end
end
