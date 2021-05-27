class Restbeast < Formula
  desc "A command line API client, an API testing tool and an easy load testing tool"
  homepage "https://restbeast.com"
  url "https://github.com/restbeast/restbeast/archive/v1.1.0.tar.gz"
  sha256 "1af07d1517cca12e5b33d49c627a263546f608e33d8d2ba2e9834e7127b3a6b3"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    system "go",
      "build",
      "-o",
      "restbeast",
      "-ldflags",
      "-X 'main.version=v1.1.0' -X 'main.sentryDsn=https://9c22d42ad3594172b24f9f5fc4db9d73@o421531.ingest.sentry.io/5341476'",
      "-v",
      "-buildmode=exe"
    bin.install "restbeast"
  end

  test do
    system "false"
  end
end
