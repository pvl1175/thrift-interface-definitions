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

struct TreeInfo
{
	1: i32 Id,
	2: string Name
	3: bool HasChildren
}

struct Ad
{
	1: i32 Id,
	2: string Location;
	3: string Address;
	4: string Lat;
	5: string Lng;
	6: string Title;
	7: string Price;
	8: string UriMWeb;
	9: string UserType;
	10: string AvitoTime;
	11: string OwnerName;
	12: string OwnerPhone;
	13: i32 AdState;
	14: bool IsParse;
	15: bool IsSource;
	16: string PhoneInfo;
}

service Api
{
	string Hello()
	void AddProxy(1: string Url)
	string PhoneInfo(1: string number)
	list<ProxyInfo> ActiveProxies()
	list<TreeInfo> TreeChildren(1: i32 id)
	list<Ad> AdsByTree(1: i32 treeId, 2: i16: rowsCount)
}