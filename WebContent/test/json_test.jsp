<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	var a = `{"username":"ssar", "password": "1234"}`;
	console.log(1, a);
	var aObject = JSON.parse(a);
	console.log(2, aObject);

	var b = `[{"username":"ssar", "password": "1234"}, {"username":"ssar", "password": "1234"}]`;
	console.log(3, b);
	var bObject = JSON.parse(b);
	console.log(4, bObject);

	var c = `{"boards" : [{"username":"ssar", "password": "1234"}, {"username":"ssar", "password": "1234"}]}`;
	console.log(5, c);
	var cObject = JSON.parse(c);
	console.log(6, cObject);

	var d = `[{"id":6,"title":"가야할매밀면","addr":"부산 연제구 월드컵대로 145번길 32
","mainImg":"https://www.visitbusan.net/uploadImgs/files/cntnts/20191217201857896_ttiel","foodDesc":"부산의 향토음식인 밀면전문점으로, 밀가루에 옥수수 전분을 섞어, 다른 밀면전문점들보다더 탄력있는 면이 특징이다. 육수는 돼지뼈와 소뼈에 각종 야채와 여러 한약재를 섞어 만들 고, 사이드 메뉴인 만두도 인기 있다.",
		"lat":35.1852,
		"lng":129.08,
		"rate":4.3,"readCount":0}]`;
	d = d.replaceAll("\n", "");
	console.log(7, d);
	var dObject = JSON.parse(d);
	console.log(8, dObject);

</script>
</body>
</html>