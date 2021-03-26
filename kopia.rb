# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210325.0.175518"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210325.0.175518/kopia-20210325.0.175518-macOS-x64.tar.gz"
    sha256 "c05f64173a54c556f51c0f3b6e7dfa8506ccd2fe16a1ebe75cb1b3284d5768a3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210325.0.175518/kopia-20210325.0.175518-macOS-arm64.tar.gz"
    sha256 "a18aa112b90658d048299f3569383bdff88c79a7c4593acba8c77b1b729f09d4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210325.0.175518/kopia-20210325.0.175518-linux-x64.tar.gz"
    sha256 "724bf94c7729d90329d2a30f492c8119f994a727a7e4b710c83721c51be553f6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210325.0.175518/kopia-20210325.0.175518-linux-arm.tar.gz"
    sha256 "0c7930cab8d1baf49d01cea4452d6c4936080b0af0d597c48830402847161463"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210325.0.175518/kopia-20210325.0.175518-linux-arm64.tar.gz"
    sha256 "41fc4cc3e2e66931cf5bb616689b5b292de2fd23b0cb2bd86598f679fddc949d"
  end

  def install
    bin.install "kopia"
  end
end
