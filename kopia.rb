# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220703.0.193818"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.193818/kopia-20220703.0.193818-macOS-x64.tar.gz"
    sha256 "c98a34a46ca97a9b8f309853a03e762a517c3e5e635b7f118b23da9c7812740e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.193818/kopia-20220703.0.193818-macOS-arm64.tar.gz"
    sha256 "df123867f14b04a9ebb87e68ad8c820325a1aebb9a1bc49fde9d0f30acbad859"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.193818/kopia-20220703.0.193818-linux-x64.tar.gz"
    sha256 "04de13fbd8e658055191c02d0589b242a42a8790a8bfaac69f061dc407185777"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.193818/kopia-20220703.0.193818-linux-arm.tar.gz"
    sha256 "83d31b61cfab10cd729d97e807ec71ea836dc387008073076bc37f63ebcfbfbd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.193818/kopia-20220703.0.193818-linux-arm64.tar.gz"
    sha256 "6f453b70b628787d327ea7595bd890b2fad2af64e02335b4d879131da0575b33"
  end

  def install
    bin.install "kopia"
  end
end
