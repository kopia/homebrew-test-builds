# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240718.0.235958"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240718.0.235958/kopia-20240718.0.235958-macOS-x64.tar.gz"
    sha256 "4a348c1848ba06d35d79ac6fe6c0f4f3ae9b222a1b6e7bf95662c4c64660c505"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240718.0.235958/kopia-20240718.0.235958-macOS-arm64.tar.gz"
    sha256 "f877e3c3158df7a2b0a247993615c4a11e14b911526a6dcdcda7d1e3231c8c3b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240718.0.235958/kopia-20240718.0.235958-linux-x64.tar.gz"
    sha256 "72753c683b55248e14868abe0ab0b998bd93042a196a3cb4a6a773451778e9da"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240718.0.235958/kopia-20240718.0.235958-linux-arm.tar.gz"
    sha256 "5dfae937f71c13ae974b5a9b74b90fc7fcd86e1d09b6caa6ddc027e8702f75cb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240718.0.235958/kopia-20240718.0.235958-linux-arm64.tar.gz"
    sha256 "750af58be62a6fad0eae54575b94e1addef6e61789f76f30dd3a4650d21978f7"
  end

  def install
    bin.install "kopia"
  end
end
