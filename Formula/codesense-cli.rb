class CodesenseCli < Formula
    desc "Auto-updating context layer for LLMs — 70% fewer tokens, more accurate answers, cross-repo aware"
    homepage "https://www.npmjs.com/package/codesense-cli"
    url "https://registry.npmjs.org/codesense-cli/-/codesense-cli-0.3.6.tgz"
    sha256 "6eb0df306d6da9a2ad65c301cf0c8a4889f2f20591c8d216670657b3a3293abd"
    license "UNLICENSED"
  
    depends_on "node"
  
    def install
      system "npm", "install", *std_npm_args
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  
    test do
      system "#{bin}/codesense", "--version"
    end
  end
  