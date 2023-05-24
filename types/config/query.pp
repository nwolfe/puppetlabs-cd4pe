# Subtype of {Cd4pe::Config} that is passed to puppet
# code for configuring the Query component.
#
# Important: DataTypes used here must be serializable, or come
# from puppet modules since they are passed to target nodes.
type Cd4pe::Config::Query = Struct[{
    analytics               => Boolean,
    container               => Cd4pe::Container,
    db_password             => Sensitive[String[1]],
    db_username             => String[1],
    resolvable_hostname     => String[1],
    runtime                 => Cd4pe::Runtime,
    log_level               => String[1],
    db_endpoint             => String[1],
    env_vars                => Hash,
    max_log_size_mb         => Integer[1],
    keep_log_files          => Integer[0],
}]
