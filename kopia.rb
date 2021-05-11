# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210510.0.201142"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201142/kopia-20210510.0.201142-macOS-x64.tar.gz"
    sha256 "b04765d0075a2dd0f9146c7a98157a19c68e423baacf44b786d63a8c60e975d1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201142/kopia-20210510.0.201142-macOS-arm64.tar.gz"
    sha256 "3174dc06271f701f8836d8ed3dc315ed20d75e7a80e8f58e724b76e8c71b7bf3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201142/kopia-20210510.0.201142-linux-x64.tar.gz"
    sha256 "470faed2f37fd00197567390f44294e9b839dbd932c4c9d84e27684766a7536f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201142/kopia-20210510.0.201142-linux-arm.tar.gz"
    sha256 "46481c6115b0c2ceeb6357c31c043e5e99298c5cec7cc172cf92e8f76670d046"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201142/kopia-20210510.0.201142-linux-arm64.tar.gz"
    sha256 "3f619dde123bb1646edd9b26c957349d567e2b6618eb59e7feb9137087ef9a18"
  end

  def install
    bin.install "kopia"
  end
end
