let 
    meta = import ./meta.nix;
in {
    "secrets/wg/chloe.age".publicKeys = meta.users.fwam ++ [ meta.hosts.chloe.publicKey ];
}
