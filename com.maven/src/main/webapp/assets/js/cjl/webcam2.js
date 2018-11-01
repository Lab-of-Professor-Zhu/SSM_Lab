var filename;
$(function() {
	var w = 320, h = 240;
	var pos = 0, ctx = null, saveCB, image = [];

	var canvas = document.createElement("canvas");
	canvas.setAttribute('width', w);
	canvas.setAttribute('height', h);

	console.log(canvas.toDataURL);
	if (canvas.toDataURL) {

		ctx = canvas.getContext("2d");

		image = ctx.getImageData(0, 0, w, h);

		saveCB = function(data) {

			var col = data.split(";");
			var img = image;

			for (var i = 0; i < w; i++) {
				var tmp = parseInt(col[i]);
				img.data[pos + 0] = (tmp >> 16) & 0xff;
				img.data[pos + 1] = (tmp >> 8) & 0xff;
				img.data[pos + 2] = tmp & 0xff;
				img.data[pos + 3] = 0xff;
				pos += 4;
			}

			if (pos >= 4 * w * h) {
				ctx.putImageData(img, 0, 0);
				$.ajax({
					type : "post",
//					url : "PhotographCjlController" + new Date().getTime(),
					url : '/com.maven/PhotographCjlController?t='+ new Date().getTime(),
					data : {
						type : "pixel",
						image : canvas.toDataURL("image/png")
					},
					dataType : "html",
					error : function() {
			            alert('请求失败 ');
			        },
					success : function(data) {
						filename = data;
						console.log("====" + data);
						pos = 0;
						$("#img").attr("src", "");
						$("#img").attr("src", "/com.maven/"+data);
					}
				});
			}
		};

	} else {

		saveCB = function(data) {
			image.push(data);

			pos += 4 * w;

			if (pos >= 4 * w * h) {
				$.ajax({
					type : "post",
					url : "CatD",
					data : {
						type : "pixel",
						image : image.join('|')
					},
					dataType : "json",
					success : function(data) {	
						alert(data);
						filename = data;
						console.log("+++++" + eval(data));
						pos = 0;
						$("#img").attr("src", "/com.maven/"+data + "");
					}
				});
			}
		};
	}

	$("#webcam").webcam({
		width : w,
		height : h,
		mode : "callback",
		swffile : ".cjl/../../assets/js/cjl/jscam_canvas_only.swf",

		onSave : saveCB,

		onCapture : function() {
			webcam.save();
		},

		debug : function(type, string) {
			console.log(type + ": " + string);
		}
	});
});

//删除
function delPhoto() {
	$.ajax({
		type : "post",
		url : "/com.maven/DelPhotoCjlController",
		data : {
			name : filename
		},
		dataType : "html",
		error : function() {
            alert('请求失败 ');
        },
		success : function(data) {
			alert(data);
			$("#img").attr("src", "");
		}
	});
}

//拍照
function savePhoto() {
	webcam.capture();
};

