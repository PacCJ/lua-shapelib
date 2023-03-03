local lu = require('luaunit')
require("lshapelib");

local tests = {};

function tests:test_loadFile()
	local o = shapelib.open("shapes/rings.shp", 'rb');
	lu.assertIsUserdata(o);
	shapelib.close(o);
end

function tests:test_readFile()
	local shp = shapelib.open("shapes/rings.shp", 'rb');
	entcount, shptype = shapelib.getinfo(shp);

	--Ent count is right
	lu.assertEquals(entcount, 2);
	--Shptype is right
	lu.assertEquals(shptype, shapelib.Arc);

	
	lu.assertEquals(#shp[1], 5);
	lu.assertEquals(#shp[2], 22);
	

	--Check some points
	lu.assertAlmostEquals(shp[1][1].x, -1.1638, 0.005);
	lu.assertAlmostEquals(shp[1][1].y, 0.2583, 0.005);

	lu.assertAlmostEquals(shp[1][5].x, -1.1638, 0.005);
	lu.assertAlmostEquals(shp[1][5].y, 0.2583, 0.005);

	lu.assertAlmostEquals(shp[1][2].x, -0.8266, 0.005);
	lu.assertAlmostEquals(shp[1][2].y, 0.549, 0.005);

	--second ring
	lu.assertAlmostEquals(shp[2][1].x, 0.0193931, 0.005);
	lu.assertAlmostEquals(shp[2][1].y, 0.5539380, 0.005);

	shapelib.close(shp);
end


return tests;