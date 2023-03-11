interface RGB24
    global Root :: Self.ContractId?
    global Name :: Ident
    global Registry { Ident } :: Resolve
    owned Registar
    op register :: Registar -> Registar <- {Registry+}
                !! noRoot |
                   invalidRoot |
                   incompleteRegistry
data Ident :: [Alphanumeric+]
data Resolve :: record Record | subdomain Subdomain
data Record :: a IPv4 | aaaa IPv6 | cname Ident -- ...
data Subdomain :: RGB24.ContractId
