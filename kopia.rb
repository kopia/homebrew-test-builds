# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251114.0.42229"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.42229/kopia-20251114.0.42229-macOS-x64.tar.gz"
    sha256 "394a297d0cf423c7a4820a81c1da614406e49793029e55f8b9bf14cd70345932"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.42229/kopia-20251114.0.42229-macOS-arm64.tar.gz"
    sha256 "43e7eb89835abd5b7009cc345b81cbabed26389f8d884433774702e8247a4031"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.42229/kopia-20251114.0.42229-linux-x64.tar.gz"
    sha256 "d34c8fece30d5117594b3e00cafe438461afc7bfe39aca14995e7fd43dfd0590"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.42229/kopia-20251114.0.42229-linux-arm.tar.gz"
    sha256 "2eadacc2e9dfc274b3aefce08ec4df79eb150bd05c1e73a7e75831964786355a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.42229/kopia-20251114.0.42229-linux-arm64.tar.gz"
    sha256 "4c41e154cef9512fa29095164597689590b8c6b44899f93a3993a521a18f41f6"
  end

  def install
    bin.install "kopia"
  end
end
