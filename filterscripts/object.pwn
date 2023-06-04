
#include <a_samp>
#include <streamer>

public OnGameModeInit()
{
	return 1;
}

public OnPlayerConnect(playerid)
{
    // SOLS + Taxi + Gas Station
    RemoveBuildingForPlayer(playerid, -1, 1952.191, -1703.267, 18.249, 150.000);
    RemoveBuildingForPlayer(playerid, 5502, 1822.890, -1725.260, 12.468, 0.250);
    RemoveBuildingForPlayer(playerid, 5633, 2089.360, -1643.930, 18.218, 0.250);
    RemoveBuildingForPlayer(playerid, -1, 1750.363, -1864.009, 29.330, 75.000);
    RemoveBuildingForPlayer(playerid, -1, 1758.562, -1778.467, 24.418, 50.000);
    RemoveBuildingForPlayer(playerid, -1, 1780.227, -1999.256, 19.750, 75.000);
    RemoveBuildingForPlayer(playerid, -1, 2091.858, -2063.216, 13.546, 150.000);
    RemoveBuildingForPlayer(playerid, -1, 2184.381, -2271.647, 13.506, 85.000);
    RemoveBuildingForPlayer(playerid, -1, 2285.371, -2167.874, 22.241, 75.000);
    RemoveBuildingForPlayer(playerid, -1, 2368.134, -2097.909, 25.709, 45.000);
    RemoveBuildingForPlayer(playerid, -1, 2143.611, -1894.399, 13.388, 50.000);
    RemoveBuildingForPlayer(playerid, 4895, 1899.160, -1936.338, 14.265, 0.250);
    RemoveBuildingForPlayer(playerid, 4818, 1669.640, -1922.180, 16.750, 0.250);
    RemoveBuildingForPlayer(playerid, 4962, 1669.640, -1922.179, 16.750, 0.250);
    RemoveBuildingForPlayer(playerid, 4881, 1701.390, -1954.130, 10.397, 0.250);
    RemoveBuildingForPlayer(playerid, 5067, 1701.390, -1954.132, 10.398, 0.250);
    RemoveBuildingForPlayer(playerid, 4872, 1610.930, -2010.630, 23.131, 0.250);
    RemoveBuildingForPlayer(playerid, 4974, 1899.156, -1936.335, 14.265, 0.250);
    RemoveBuildingForPlayer(playerid, 5084, 1898.398, -1913.406, 20.820, 0.250);
    RemoveBuildingForPlayer(playerid, 4981, 1898.400, -1913.410, 20.819, 0.250);
    RemoveBuildingForPlayer(playerid, 4982, 1892.540, -2012.828, 21.375, 0.250);
    RemoveBuildingForPlayer(playerid, 4859, 1868.948, -2003.660, 13.750, 0.250);
    RemoveBuildingForPlayer(playerid, 4837, 1823.010, -2087.168, 12.460, 0.250);
    RemoveBuildingForPlayer(playerid, 5086, 1892.540, -2012.828, 21.375, 0.250);
    RemoveBuildingForPlayer(playerid, 5314, 2085.178, -2132.698, 12.413, 0.250);
    RemoveBuildingForPlayer(playerid, 4806, 1880.335, -2001.921, 12.570, 0.250);
    RemoveBuildingForPlayer(playerid, 1308, 2403.239, -2085.330, 11.515, 0.250);
    RemoveBuildingForPlayer(playerid, 5119, 2176.060, -1911.880, 12.648, 0.250);
    RemoveBuildingForPlayer(playerid, 5245, 2176.060, -1911.880, 12.648, 0.250);
    RemoveBuildingForPlayer(playerid, 5349, 2143.669, -1894.479, 12.500, 0.250);
    RemoveBuildingForPlayer(playerid, 5350, 2143.669, -1894.479, 12.500, 0.250);
    RemoveBuildingForPlayer(playerid, 1226, 2134.600, -1900.410, 16.390, 0.250);
    RemoveBuildingForPlayer(playerid, 1307, 2139.159, -1904.270, 12.765, 0.250);
    RemoveBuildingForPlayer(playerid, 1226, 2155.229, -1890.369, 16.390, 0.250);
    RemoveBuildingForPlayer(playerid, 1226, 2174.129, -1898.520, 16.390, 0.250);
    RemoveBuildingForPlayer(playerid, 1308, 2192.270, -1885.089, 12.703, 0.250);
    RemoveBuildingForPlayer(playerid, 1226, 2114.320, -1890.369, 16.390, 0.250);
    RemoveBuildingForPlayer(playerid, 1226, 2217.969, -2001.530, 16.460, 0.250);
    RemoveBuildingForPlayer(playerid, 1315, 2216.830, -1983.380, 15.812, 0.250);
    RemoveBuildingForPlayer(playerid, 1308, 2229.209, -2010.979, 11.515, 0.250);
    RemoveBuildingForPlayer(playerid, 1226, 2231.000, -2033.849, 16.351, 0.250);
    RemoveBuildingForPlayer(playerid, -1, 2056.984, -1830.515, 20.601, 0.250);
    RemoveBuildingForPlayer(playerid, -1, 2062.031, -1826.640, 19.992, 0.250);
    RemoveBuildingForPlayer(playerid, 5422, 2071.476, -1831.421, 14.562, 0.250);
    RemoveBuildingForPlayer(playerid, -1, 2029.500, -1819.273, 14.335, 0.250);
    RemoveBuildingForPlayer(playerid, 5422, 2071.476, -1831.421, 14.562, 1.000);
    RemoveBuildingForPlayer(playerid, 5633, 2089.360, -1643.930, 18.218, 0.250);
    RemoveBuildingForPlayer(playerid, -1, 1918.851, -1776.328, 16.976, 0.250);
	RemoveBuildingForPlayer(playerid, 1531, 1724.729, -1741.500, 14.101, 0.250);
    RemoveBuildingForPlayer(playerid, 1267, 1680.630, -2015.969, 25.539, 0.250);
    RemoveBuildingForPlayer(playerid, 1261, 1680.630, -2015.969, 25.539, 0.250);
    RemoveBuildingForPlayer(playerid, 4891, 1681.160, -1966.989, 31.085, 0.250);
    
    // Bank GTA:ID
    RemoveBuildingForPlayer(playerid, 620, 1292.000, -1374.300, 12.366, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1300.588, -1374.300, 12.366, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1321.520, -1374.430, 12.585, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1329.479, -1374.430, 12.585, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1327.588, -1333.670, 6.109, 0.250);
    RemoveBuildingForPlayer(playerid, 5704, 1309.910, -1330.130, 25.187, 0.250);
    RemoveBuildingForPlayer(playerid, 5928, 1309.910, -1330.130, 25.187, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1330.598, -1340.979, 6.109, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1326.698, -1316.010, 8.725, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1332.000, -1309.430, 8.725, 0.250);
    RemoveBuildingForPlayer(playerid, 5704, 1309.910, -1330.130, 25.187, 0.250);
    RemoveBuildingForPlayer(playerid, 5928, 1309.910, -1330.130, 25.187, 0.250);
    RemoveBuildingForPlayer(playerid, 5704, 1309.910, -1330.130, 25.187, 0.250);
    RemoveBuildingForPlayer(playerid, 5928, 1309.910, -1330.130, 25.187, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1321.520, -1374.430, 12.585, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1329.479, -1374.430, 12.585, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1300.588, -1374.300, 12.366, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1292.000, -1374.300, 12.366, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1330.598, -1340.979, 6.109, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1327.588, -1333.670, 6.109, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1326.698, -1316.010, 8.725, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1332.000, -1309.430, 8.725, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1292.000, -1374.300, 12.366, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1300.588, -1374.300, 12.366, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1321.520, -1374.430, 12.585, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1329.479, -1374.430, 12.585, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1327.588, -1333.670, 6.109, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1326.698, -1316.010, 8.725, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1332.000, -1309.430, 8.725, 0.250);
    RemoveBuildingForPlayer(playerid, 620, 1330.598, -1340.979, 6.109, 0.250);
    RemoveBuildingForPlayer(playerid, 5704, 1309.910, -1330.130, 25.187, 0.250);
    RemoveBuildingForPlayer(playerid, 5928, 1309.910, -1330.130, 25.187, 0.250);
    RemoveBuildingForPlayer(playerid, 5704, 1309.910, -1330.130, 25.187, 0.250);
    RemoveBuildingForPlayer(playerid, 5928, 1309.910, -1330.130, 25.187, 0.250);
	return 1;
}
