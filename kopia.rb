# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221021.0.53938"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221021.0.53938/kopia-20221021.0.53938-macOS-x64.tar.gz"
    sha256 "16608dfa3344d4b8378c1f7864d99bc0ccd549f5783fa67921e0c27e2cbfaf72"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221021.0.53938/kopia-20221021.0.53938-macOS-arm64.tar.gz"
    sha256 "ece3d83b2e19139b5f324915b3328ada00729d43b6e93e45b55f1bc82fa30ef1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221021.0.53938/kopia-20221021.0.53938-linux-x64.tar.gz"
    sha256 "3c23efc8cf4fc59bf48b5b8fdd97982efd3737569e1f1269ba4ac37ca7ebbb41"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221021.0.53938/kopia-20221021.0.53938-linux-arm.tar.gz"
    sha256 "865b9314b4d10f59d523034b920bac8eba7064f701651819c710e597b35bf2ec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221021.0.53938/kopia-20221021.0.53938-linux-arm64.tar.gz"
    sha256 "c5fb9efdd020c192a59be4bd7dbb8a0409b22cf24aedcae3680864218354200f"
  end

  def install
    bin.install "kopia"
  end
end
