# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240430.0.172111"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240430.0.172111/kopia-20240430.0.172111-macOS-x64.tar.gz"
    sha256 "aabc566e952752bb580dfcc87f01c2c59dd80915d8c922727c0172bb2a9e0a62"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240430.0.172111/kopia-20240430.0.172111-macOS-arm64.tar.gz"
    sha256 "f2056114219271202383d328572de0f07ce7e2c603eb2a6d445ae66e512d5391"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240430.0.172111/kopia-20240430.0.172111-linux-x64.tar.gz"
    sha256 "6af2e8d14df82a85209b51b114bf13c8424d70577135baf007fb15ebbb78a876"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240430.0.172111/kopia-20240430.0.172111-linux-arm.tar.gz"
    sha256 "14327f32198ada9f1a90fe3becda40afeb262a58fe9e1b77f8ba4abf33c8df5c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240430.0.172111/kopia-20240430.0.172111-linux-arm64.tar.gz"
    sha256 "3e37aab6746f72b662c0926951f970c23c2dcf76358a069a88938f0cdee6c95d"
  end

  def install
    bin.install "kopia"
  end
end
