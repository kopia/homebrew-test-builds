# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220611.0.22308"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.22308/kopia-20220611.0.22308-macOS-x64.tar.gz"
    sha256 "4a5215805784875c1f72c4c56cc58019409cde9020831af7e31f215bc73374f3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.22308/kopia-20220611.0.22308-macOS-arm64.tar.gz"
    sha256 "ea9dace7a1981b6c26d755adab75ef75bdb632694358a69a68bc3f769a05c027"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.22308/kopia-20220611.0.22308-linux-x64.tar.gz"
    sha256 "da26ee7351ece48883ab1ab83ecfd9f4a6fea670f6324b0122223c36fd775b9c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.22308/kopia-20220611.0.22308-linux-arm.tar.gz"
    sha256 "2f1e2800cea9d66bc14d2b4ae20ecc10de5b44e4f6152c4f12084784ef8d8c97"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.22308/kopia-20220611.0.22308-linux-arm64.tar.gz"
    sha256 "ac96e1135e15e66728308384caa5b6d6db875a572ee26b8505ab4d0232cc5674"
  end

  def install
    bin.install "kopia"
  end
end
