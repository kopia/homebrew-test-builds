# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240513.0.151037"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.151037/kopia-20240513.0.151037-macOS-x64.tar.gz"
    sha256 "5fc9314f515a62e3febf2b9c76aa3a7d53b4bea46cb22bed830ee48825c70e18"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.151037/kopia-20240513.0.151037-macOS-arm64.tar.gz"
    sha256 "f1f95be67099a2841438c53b6740d65d2d0fc330b9c4fd57cb676e6386757044"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.151037/kopia-20240513.0.151037-linux-x64.tar.gz"
    sha256 "9d477bf28b828ad0e0fe3e76d038e04f333cb85aab0ea39c5065a1268d1ce6bc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.151037/kopia-20240513.0.151037-linux-arm.tar.gz"
    sha256 "b798b8cb0b6d194ba5db786f5bdaf6049859137a575e805f72f31738aca14ddd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.151037/kopia-20240513.0.151037-linux-arm64.tar.gz"
    sha256 "5b9063750aba68986bf9d513a4caaf721e9effd0bff859ed480c662a1cd41b70"
  end

  def install
    bin.install "kopia"
  end
end
