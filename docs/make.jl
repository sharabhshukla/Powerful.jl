using Documenter
using Documenter: auto_detect_deploy_system
using Powerful

makedocs(
    sitename = "Powerful",
    format = Documenter.HTML(),
    modules = [Powerful]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
# write the deploydocs for deploying the docs to gh-pages
deploydocs(
    repo="https://github.com/sharabhshukla/Powerful.jl.git",
    target="build",
    branch="gh-pages",
    deploy_config = auto_detect_deploy_system()
)
