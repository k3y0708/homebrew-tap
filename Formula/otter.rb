class Otter < Formula
  desc "Otter is a small shell written in go"
  version "v0.0.1"
  homepage "https://github.com/k3y0708/otter"
  url "https://github.com/k3y0708/otter/archive/refs/tags/#{version}.tar.gz"
  sha256 "79d790a9bca260a4aa9ab9ae12b8d0c1523b4650ad38c1ef6cb7f8c1d4ce3649"
  license "GNU GPLv3"
  head "https://github.com/k3y0708/otter.git"
  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end
