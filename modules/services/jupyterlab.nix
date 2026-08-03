{ ... }: {
	services.jupyter = {
		enable = true;
		port = 9111;
		password = "argon2:$argon2id$v=19$m=10240,t=10,p=8$SSeVfDayKtEl31+SFJ9wHA$1V+7H4bgDkC7F9b63yN+doP794GikCEuNsU/tNw0Nso";
	};
}
