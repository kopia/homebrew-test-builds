# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260610.0.60520"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.60520/kopia-20260610.0.60520-macOS-x64.tar.gz"
    sha256 "477241217507ddd048ea91de561349cfe08978807bff785ad7ae9bd2bf72cfe9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.60520/kopia-20260610.0.60520-macOS-arm64.tar.gz"
    sha256 "82764ca0b57ea2fc0559e7c56899bb488ad276977d47c4de85614fe5f8457c43"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.60520/kopia-20260610.0.60520-linux-x64.tar.gz"
    sha256 "247095fd028dd112b327e421ef3885b1b5d709ca87dd495fae009a7a24f34867"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.60520/kopia-20260610.0.60520-linux-arm.tar.gz"
    sha256 "d7397f439431e374382d7aebb37f46553c2ff5198903c4f9c19464566262f009"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.60520/kopia-20260610.0.60520-linux-arm64.tar.gz"
    sha256 "05ded05665fb9e82844426ef9feb70b5224241f934513c9290265571e3fbdc67"
  end

  def install
    bin.install "kopia"
  end
end
