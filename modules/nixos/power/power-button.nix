{ ... }: {
	services.logind.settings = {
		Login = {
			powerKey = "ignore";
		};
	};
}
