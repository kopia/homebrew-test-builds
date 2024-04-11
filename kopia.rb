# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240410.0.175613"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240410.0.175613/kopia-20240410.0.175613-macOS-x64.tar.gz"
    sha256 "00c7b6fe294ef47724c2bcdfede9fba2579e09b767fde96bba9aefaa2295b0d0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240410.0.175613/kopia-20240410.0.175613-macOS-arm64.tar.gz"
    sha256 "03443f4482fd01481e8f0479ce6663cf7e0a6237f786b3931f12700e13c29d38"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240410.0.175613/kopia-20240410.0.175613-linux-x64.tar.gz"
    sha256 "c580aced0caf3c18c89f257c483809ba951d8c863637d76b3181653e65caacc8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240410.0.175613/kopia-20240410.0.175613-linux-arm.tar.gz"
    sha256 "a8b2898ddb55b0e435d1b09d9e4108a87e00d546c45e42b501e9cda6b740299c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240410.0.175613/kopia-20240410.0.175613-linux-arm64.tar.gz"
    sha256 "5fd32ffd09e63834f132f9f203a02a6a7e5795115984b2b3dc78126457e6b809"
  end

  def install
    bin.install "kopia"
  end
end
