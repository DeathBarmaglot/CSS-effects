let canvas = document.createElement('canvas');
canvas.width = 1360;
canvas.height = 850;
document.body.append(canvas);
let context = canvas.getContext('2d');
context.fillStyle = '#000';
context.fillRect(0,0, context.canvas.width, context.canvas.height);
let lastTime;
function h(){
	return Math.floor(Math.random()*16).toString(16);
}
function render(deltaTime = 0) {
	requestAnimationFrame((time)=>{
		if(lastTime == undefined){lastTime = time}
			render(time - lastTime);
		onRender(deltaTime);
	});
}
let ang = 0;
let r=300;
let lim=r+50;
let c;
let d = context.canvas.width/2;

function onRender(deltaTime){
	context.strokeStyle =`#${ h() }${ h() }${ h() }${ h() }${ h() }${ h() }`;
	context.beginPath();
	let lx = Math.sin(ang);
	let ly = Math.cos(ang);
	ang += deltaTime/3000;
	let x = Math.sin(ang);
	let y = Math.cos(ang);
	if (r<lim&&r>0) {c=-1};
	if (r<-lim) {c=1};

	console.log(`#${ h() }${ h() }${ h() }${ h() }${ h() }${ h() }`)
	r+=c*.1;
	// d+=c;
	context.moveTo(lx*r + d, ly*r + context.canvas.height/2-50);
	context.lineTo(x*r + d, y *r + context.canvas.height/2-50);
	context.fillStyle = '#00000001';
	context.fillRect(0,0,context.canvas.width, context.canvas.height);
	context.stroke();
	context.closePath();
}
render(0);