# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220322.0.190950"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220322.0.190950/kopia-20220322.0.190950-macOS-x64.tar.gz"
    sha256 "88a17c58c433ea776dbd4683a797d0a15f100d9af25a2e379e9ddc269d64b59d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220322.0.190950/kopia-20220322.0.190950-macOS-arm64.tar.gz"
    sha256 "51516d231693be768bc3ff605701e585b770864b2033e4f1fdb3cfd34a3439c3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220322.0.190950/kopia-20220322.0.190950-linux-x64.tar.gz"
    sha256 "9cc7f0b3ed777f814c11a7b4d81ab9c000629cb2b4cc7823fa8bcb156ece425a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220322.0.190950/kopia-20220322.0.190950-linux-arm.tar.gz"
    sha256 "70247845eca28065d46ec3a8e27948a9855004ca0c6bf6a28aa2a79593da135f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220322.0.190950/kopia-20220322.0.190950-linux-arm64.tar.gz"
    sha256 "7e18655bc527ca4ff90b0d7caef5dc969b522d58ba93a594f4b25206f05733d3"
  end

  def install
    bin.install "kopia"
  end
end
