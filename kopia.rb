# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211106.0.173557"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.173557/kopia-20211106.0.173557-macOS-x64.tar.gz"
    sha256 "40eb185c6519d0cdcc6855ce7633da611d8c055e230566b12406b5e471bbec7e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.173557/kopia-20211106.0.173557-macOS-arm64.tar.gz"
    sha256 "011eaaa103364911c8d82cffdab1b544fa5146dc8ca0334d35f2cb2e66733d24"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.173557/kopia-20211106.0.173557-linux-x64.tar.gz"
    sha256 "9744b5e47830b1f0c6e94eacf07c4b3a3c1794df0b4dab0df3ecd0b3395fdb52"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.173557/kopia-20211106.0.173557-linux-arm.tar.gz"
    sha256 "f53fa9b56e1ff9dde7a831494f2318e088429c54da028b22b266ba10570517cf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.173557/kopia-20211106.0.173557-linux-arm64.tar.gz"
    sha256 "46388ce7c91ec66276978a6b430595f64520dd0782ce5b33b77ce9a150ca61f7"
  end

  def install
    bin.install "kopia"
  end
end
