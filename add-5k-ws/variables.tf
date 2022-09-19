variable "hostname" {
    type = string
    default = "1fdb0f0fa44e.test-env.scalr.com"
}

variable "api_token" {
    type = string
    default = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ1c2VyIiwianRpIjoiYXQtdGs5djl0bWQ0cXJyZXI4In0.D4KVEOcGcNPjaGCcDgp2t82TPMa7Pj4gqFxCKUVqu3k"
    sensitive = true
}

variable "github_token" {
    type = string
    default = "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"
    sensitive = true
}