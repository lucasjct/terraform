# nota: exemplos para utilização dp 'for'.

locals {

  files           = ["ips.json", "report.csv", "sitemap.xml"]
  file_extensions = [for file in local.files : regex("\\.[0-9a-z]+$", file)]
  file_extensions_upper = {for file in local.file_extensions : file => upper(file) if file != ".json"}


# nota: exemplo com splats

ips= [
    {
        public: "192.168.100.20",
        private: "192.123.45.20",
    },

    {
        public: "192.168.123.20",
        private: "192.123.145.20",
    }
]
}
