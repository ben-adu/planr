<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/1.7.19/fabric.js"></script>
	
<script src="scripts/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/index.css">
<title>Home</title>
<script>
	(function($) {
		$(function() {

			$('.button-collapse').sideNav();

		}); // end of document ready
	})(jQuery); // end of jQuery name space
</script>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		$('.preloader-background').delay(1700).fadeOut('slow');

		$('.preloader-wrapper').delay(1700).fadeOut();
	});
</script>
</head>
<body>

	<div class="preloader-background">
		<div class="preloader-wrapper big active">
			<div class="spinner-layer spinner-blue-only">
				<div class="circle-clipper left">
					<div class="circle"></div>
				</div>
				<div class="gap-patch">
					<div class="circle"></div>
				</div>
				<div class="circle-clipper right">
					<div class="circle"></div>
				</div>
			</div>
		</div>
	</div>

	<!-- NAV -->
	<nav class="default" role="navigation">
	<ul id="slide-out" class="side-nav">
		<li><div class="userView">
				<div class="background">
					<img src="images/lake.jpg">
				</div>
				<a href="#!user"><img class="circle" src="images/ben.jpg"></a>
				<a href="#!name"><span class="white-text name">Ben Adu</span></a> <a
					href="#!email"><span class="white-text email">ben@mail.com</span></a>
			</div></li>
		<c:url value="/clientManagement" var="client" />
		<li><a href="${client }" class="waves-effect"><i
				class="material-icons">perm_identity</i>Client Management</a></li>
		<c:url value="/clientManagement" var="client" />
		<li><a href="#" class="waves-effect"><i
				class="material-icons">business</i>Generate Reports</a></li>
		<c:url value="/inventoryManagement" var="inventory" />
		<li><a href="${ inventory}" class="waves-effect"><i
				class="material-icons">devices_other</i>Inventory management</a></li>
		<c:url value="#" var="siteLayout" />
		<li><a href="#" class="waves-effect"><i
				class="material-icons">map</i>Approved Site Layouts</a></li>
		<c:url value="/inventoryManagement" var="client" />
		<li><a href="#" class="waves-effect"><i
				class="material-icons">arrow_back</i>Back to Main Menu</a></li>
		<c:url value="/logout" var="logout" />
		<li><a href="${logout}" class="waves-effect"><i
				class="material-icons">perm_identity</i>Logout</a></li>
	</ul>
	<a href="#" data-activates="slide-out"
		class="button-collapse show-on-large"><i class="material-icons">menu</i></a>
	<a href="secure" class="brand-logo center"><img
		src="images/mcs.png" height="80"></a> </nav>
	<!--  END OF NAV -->




	<!-- Body -->
<BR>
	<div class="row">

            <div class="col s1">

                <div id="left-panel">
                    <ul id="toolbar">
                        <li><a class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons" value="start drawing" onclick="onStartDrawing();">edit</i></a></li>

                        <li><a class="btn-floating btn-large waves-effect waves-light red" onclick="onStopDrawing();">
                                <img src ="images/pencil-cancel.png" class="stop_drawing" id="stop_draw" value="stop drawing" height="20"/>
                            </a></li>

                        <li><a id="btnZoomOut" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons"/>zoom_out</i></a></li>

                        <li><a id="btnZoomIn" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons"/>zoom_in</i></a></li>

                        <li><a id="btnResetZoom" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons"/>refresh</i></a></li>

                        <li><a id="delete" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">delete</i></a></li>
                        
                        <li><a id="copy" onclick="Copy()" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">content_copy</i></a></li>
                        
                        <li><a id="paste" onclick="Paste()" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">content_paste</i></a></li>
                        <!--<li><a id="btnPanModeByMouse" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons"/>pan_tool</i></a></li>-->
                        <li><a id="create-text-obj" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">text_fields</i></a></li>
                    </ul>
                </div>
            </div>

            <div class="col s10">

                <div class="canvas-container">
                    <canvas id="canvasObject" style="border:1px solid #ccc"></canvas>
                </div>         
            </div>

            <div class="col s1">
                <div class="furniture">
                    <ul id="image-list">
                        <li><img draggable="true" src="images/first-aid.png" height="50"></li>
                        <li><img draggable="true" src="images/water.png" height="50"></li>
                        <li><img draggable="true" src="images/food-truck.png" height="50"></li>
                        <li><img draggable="true" src="images/port-o-let.png" height="50"></li>
                        <li><img draggable="true" src="images/acess-table.png" height="50"></li>
                        <li><img draggable="true" src="images/Electrical.png" height="50"></li>
                        <li><img draggable="true" src="images/food-vendor.png" height="50"></li>
                        <li><img draggable="true" src="images/picnic_table.png" height="50"></li>
                        <li><img draggable="true" src="images/umbrella.png" height="50"></li>
                    </ul>
                </div>
            </div>
        </div>
<div id="JSON">
						<button id="Save" onclick="" style="background-color: black; color: yellow;">Save Test</button>
                        <p>Pass JSON to controller.</p>
						
                        <button id="demo" onclick="myFunction()" style="background-color: black; color: yellow;">Show JSON in console.</button>
                        <p>This shows the the current layout in JSON format in the console.</p>

                        <button id="demo" onclick="readTextFile()" style="background-color: black; color: yellow;">Load (default) JSON layout from "server".</button>
                        <p>This loads the default layout.</p>

                        <button id="demo" onclick="createJSONLink()" style="background-color: black; color: yellow;">Save and Create JSON.</button>
                        <p>This creates the a link for the current layout as a JSON file.</p>
                        <a></a>
                    </div>
</body>
<script>
var canvasScale = 1;
var SCALE_FACTOR = 1.1;
var zoomMax = 2.3;


function initCanvas() {

    $('.canvas-container').each(function (index) {

        var canvasContainer = $(this)[0];
        var canvasObject = $("canvas", this)[0];
        var canvas = window._canvas = new fabric.Canvas(canvasObject);

        var img = new Image();
        img.src = "images/backdrop.png";
        img.onload = function () {
            canvas.setBackgroundImage(img.src, canvas.renderAll.bind(canvas), {
                originX: 'left',
                originY: 'top',
                left: 0,
                top: 0
            });

              var canvasHeight = canvas.setHeight(img.height);
              var canvasWidth = canvas.setWidth(img.width);
              canvasWidth, canvasHeight;
//            canvas.setDimensions({
//                width: img.width,
//                height: img.height
//            });
        };
        
        var imageOffsetX, imageOffsetY;

        function handleDragStart(e) {
            [].forEach.call(images, function (img) {
                img.classList.remove('img_dragging');
            });
            this.classList.add('img_dragging');

            var imageOffset = $(this).offset();
            imageOffsetX = e.clientX - imageOffset.left;
            imageOffsetY = e.clientY - imageOffset.top;
        }

        function handleDragOver(e) {
            if (e.preventDefault) {
                e.preventDefault();
            }
            e.dataTransfer.dropEffect = 'copy';
            return false;
        }

        function handleDragEnter(e) {
            this.classList.add('over');
        }

        function handleDragLeave(e) {
            this.classList.remove('over');
        }

        function handleDrop(e) {
            e = e || window.event;
            if (e.preventDefault) {
                e.preventDefault();
            }
            if (e.stopPropagation) {
                e.stopPropagation();
            }
            var img = document.querySelector('.furniture img.img_dragging');
            console.log('event: ', e);

            var offset = $(canvasObject).offset();
            var y = e.clientY - (offset.top + imageOffsetY);
            var x = e.clientX - (offset.left + imageOffsetX);

            var newImage = new fabric.Image(img, {
                width: img.width,
                height: img.height,
                left: x,
                top: y,
                hasControls:false
            });
            canvas.add(newImage);
            return false;
        }

        function handleDragEnd(e) {
            [].forEach.call(images, function (img) {
                img.classList.remove('img_dragging');
            });
        }

        var images = document.querySelectorAll('.furniture img');
        [].forEach.call(images, function (img) {
            img.addEventListener('dragstart', handleDragStart, true);
            img.addEventListener('dragend', handleDragEnd, true);
        });
        canvasContainer.addEventListener('dragenter', handleDragEnter, false);
        canvasContainer.addEventListener('dragover', handleDragOver, false);
        canvasContainer.addEventListener('dragleave', handleDragLeave, false);
        canvasContainer.addEventListener('drop', handleDrop, false);
    });
}
initCanvas();

var getFabricCanvases = (function () {
        var fabricCanvasCollection;
        return function getCanvases() {
            if (!fabricCanvasCollection) {
                fabricCanvasCollection = [];
                var fabricCanvas = $('.canvas-container canvas');
                fabricCanvas.each(function(index, item) {
                    fabricCanvasCollection.push($(item));
                });
            }
            return fabricCanvasCollection;
        }
    })();
   

$('#create-text-obj').on('click', function () {
    create_text_obj();
});

var create_text_obj = function () {
    var text_obj = new fabric.IText('Add Text', {
        left: 400,
        top: 225,
        fontSize: 20,
        textAlign: "left",
        fill: "#black", 
        lockRotation: true,
        hasRotationPoint: false,
        hasBorders: false
    });

    window._canvas.add(text_obj);
};

$("#delete").click(function () {
    deleteObjects();
});

var onStartDrawing = function () {
    window._canvas.isDrawingMode = true;
};

var onStopDrawing = function () {
    window._canvas.isDrawingMode = false;
};


function deleteObjects() {
    var activeObject = window._canvas.getActiveObject(),
            activeGroup = window._canvas.getActiveGroup();
    if (activeObject) {
        window._canvas.remove(activeObject);
    }
}


$("#btnZoomIn").click(function () {
    zoomIn();
});
// button Zoom Out

$("#btnZoomOut").click(function () {
    zoomOut();

    getFabricCanvases().forEach(function (elementValue) {
        var currentTop = Number(elementValue.css("top").replace(/[^\d\.\-]/g, ''));
        var currentLeft = Number(elementValue.css("left").replace(/[^\d\.\-]/g, ''));

        currentTop = zoomCalcYpos(currentTop);
        currentLeft = zoomCalcXpos(currentLeft);

        elementValue.css("top", currentTop);
        elementValue.css("left", currentLeft);
    });

});

// button Reset Zoom
$("#btnResetZoom").click(function () {
    resetZoom();
});

function zoomIn() {
    if (window._canvas.getZoom().toFixed(5) > zoomMax) {
        console.log("zoomIn: Error: cannot zoom-in anymore");
        return;
    }

    window._canvas.setZoom(window._canvas.getZoom() * SCALE_FACTOR);
    window._canvas.setHeight(window._canvas.getHeight() * SCALE_FACTOR);
    window._canvas.setWidth(window._canvas.getWidth() * SCALE_FACTOR);
    window._canvas.renderAll();
}

// Zoom Out
function zoomOut() {
    if (window._canvas.getZoom().toFixed(5) <= 1) {
        console.log("zoomOut: Error: cannot zoom-out anymore");
        return;
    }

    window._canvas.setZoom(window._canvas.getZoom() / SCALE_FACTOR);
    window._canvas.setHeight(window._canvas.getHeight() / SCALE_FACTOR);
    window._canvas.setWidth(window._canvas.getWidth() / SCALE_FACTOR);
    window._canvas.renderAll();
}

// Reset Zoom
function resetZoom() {

    window._canvas.setHeight(window._canvas.getHeight() / window._canvas.getZoom());
    window._canvas.setWidth(window._canvas.getWidth() / window._canvas.getZoom());
    window._canvas.setZoom(1);

    window._canvas.renderAll();

    getFabricCanvases().forEach(function (item) {
        item.css('left', 0);
        item.css('top', 0);
    });

}

createListenersKeyboard();

function createListenersKeyboard() {
    document.onkeydown = onKeyDownHandler;
    //document.onkeyup = onKeyUpHandler;
}

function onKeyDownHandler(event) {
    //event.preventDefault();

    var key;
    if(window.event){
        key = window.event.keyCode;
    }
    else{
        key = event.keyCode;
    }

    switch(key){
        case 187: // Zoom IN - Ctrl+"+"
            if(ableToShortcut()){
                if(event.ctrlKey){
                    event.preventDefault();
                    zoomIn();
                }
            }
            break;
            
        case 189: // Zoom OUT Ctrl+"-"
            if(ableToShortcut()){
                if(event.ctrlKey){
                    event.preventDefault();
                    zoomOut();
                }
            }
            break;
            
        case 48: // Reset Zoom - Ctrl+"0"
            if(ableToShortcut()){
                if(event.ctrlKey){
                    event.preventDefault();
                    resetZoom();
                }
            }
            break;

           case 8: // Delete
            if(ableToShortcut()){
                    event.preventDefault();
                    deleteObjects();

            }
            break; 

            case 67: //Copy - Ctrl+c
             if(ableToShortcut()){
                 if(event.ctrlKey){
                     event.preventDefault();
                     Copy();
                 }
             }
             break;

            case 86: //Paste - Ctrl+v
             if(ableToShortcut()){
                 if(event.ctrlKey){
                     event.preventDefault();
                     Paste();
                 }
             }
             break; 
        default:
            // TODO
            break;
    }
}

function ableToShortcut(){ //call the shortcut method

    return true;
}

// To copy and add to clipboard a copy of the activeObject 
function Copy() {

        window._canvas.getActiveObject().clone(function(cloned) {
                _clipboard = cloned;
        });
}
// To paste from clipboard a copy of the activeObject
function Paste() {
        // clone again, so you can do multiple copies.
        _clipboard.clone(function(clonedObj) {
                window._canvas.discardActiveObject();
                clonedObj.set({
                        left: clonedObj.left + 15,
                        top: clonedObj.top + 15,
                        evented: true,
                        hasControls:false
                });
                if (clonedObj.type === 'activeSelection') {
                        // active selection needs a reference to the canvas.
                        clonedObj.canvas = window._canvas;
                        clonedObj.forEachObject(function(obj) {
                                window._canvas.add(obj);
                        });
                        // this should solve the unselectability
                        clonedObj.setCoords();
                } else {
                        window._canvas.add(clonedObj);
                }
                _clipboard.top += 15;
                _clipboard.left += 15;
                window._canvas.setActiveObject(clonedObj);
                window._canvas.requestRenderAll();
        });
}
function createJSONLink() {
    //var data = {a: 1, b: 2, c: 3};
    //json = JSON.stringify(data);
    var blob = new Blob([JSON.stringify(window._canvas.toJSON())], {type: "application/json"});
    var url = URL.createObjectURL(blob);

    var a = document.createElement('a');
    a.download = "backup.json";
    a.href = url;
    a.textContent = "Download backup.json";
    document.getElementById('JSON').appendChild(a);
var a = document.createElement('a');
  a.setAttribute('href', 'data:text/plain;charset=utf-u,'+encodeURIComponent(text));
  a.setAttribute('download', filename);
  a.click()

                }

function myFunction() {
        ///canvas.item(0).sourcePath = 'C:\Users\Kurt\Documents\NetBeansProjects\FabricTest\assets';
    console.log(JSON.stringify(window._canvas.toDatalessJSON()));
}

function readTextFile() {
    var url = "http://shahanki.dev.fast.sheridanc.on.ca/backup.json";
    var data1;
    $.getJSON(url, function (data) {
        console.log(JSON.stringify(data))
        data1 = data
        window._canvas.loadFromJSON(JSON.stringify(data1), window._canvas.renderAll.bind(window._canvas))
    });
    //data1 = JSON.parse(data1);
    window._canvas.loadFromJSON(JSON.stringify(data1), window._canvas.renderAll.bind(window._canvas));
}

$('.Save').click(function(){

	var jsonString = JSON.stringify(canvas.toJSON())

	$.ajax({
        url: '/createLayout/',
        type: 'POST',
        dataType: 'json',
        data: JSON.stringify(canvas.toJSON()) ,
        contentType: 'application/json',
        mimeType: 'application/json',
        success: _callBack,
        error: _errorCallback
    });
});







</script>

</html>