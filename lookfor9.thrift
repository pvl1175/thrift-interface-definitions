namespace cpp lookfor9.api
namespace java lookfor9.api
namespace php lookfor9.api
namespace netcore lookfor9.api
namespace netcore lookfor9.api
namespace js lookfor9.api

struct ProxyInfo
{
	1: string Url,
	2: string State,
	3: i32 TimeAlive,
	4: string LastCheck;
}

service Api
{
	string Hello()
	void AddProxy(1: string Url)
	string PhoneInfo(1: string number)
	list<ProxyInfo> GetActiveProxies()
}