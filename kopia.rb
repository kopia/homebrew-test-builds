# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220610.0.222949"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220610.0.222949/kopia-20220610.0.222949-macOS-x64.tar.gz"
    sha256 "b1a86ae586d5de341396b0fc02f15ca871044e5e8a4117ff62c58778a5345aba"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220610.0.222949/kopia-20220610.0.222949-macOS-arm64.tar.gz"
    sha256 "00b169ce66ab684a32c632194a8d37fa8ebd450d82ba3f43de66dcf2ad08bd5a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220610.0.222949/kopia-20220610.0.222949-linux-x64.tar.gz"
    sha256 "f79f0757999b502a3710b8a37a16c5ef3443d381b92e57546a34260b6116f23f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220610.0.222949/kopia-20220610.0.222949-linux-arm.tar.gz"
    sha256 "e417fb18b644c0665f47e7fb7108be2c2457c28c5aeefceda307031aebd50c5f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220610.0.222949/kopia-20220610.0.222949-linux-arm64.tar.gz"
    sha256 "c2765072e0bd06fe9f40dcd70ace892eac9d7376fa82d15d5e75dda43104d204"
  end

  def install
    bin.install "kopia"
  end
end
