(this.webpackJsonpfrontend=this.webpackJsonpfrontend||[]).push([[0],{104:function(e,t,n){},105:function(e,t,n){},155:function(e,t,n){"use strict";n.r(t);var a=n(0),c=n.n(a),r=n(20),i=n.n(r),s=(n(104),n(30)),o=(n(105),n(55)),l=n(163),j=n(2);function d(){return Object(j.jsx)(a.Fragment,{children:Object(j.jsx)(l.a.Link,{href:"/login",children:"Login"})})}var h=function(){return JSON.parse(sessionStorage.getItem("user"))};function b(){var e,t=null===(e=h())||void 0===e?void 0:e.name;return t?Object(j.jsxs)(o.a,{title:t,id:"basic-nav-dropdown",children:[Object(j.jsx)(o.a.Item,{href:"/profile",children:"Mi cuenta"}),Object(j.jsx)(o.a.Divider,{}),Object(j.jsx)(o.a.Item,{href:"/logout",children:"Logout"})]}):Object(j.jsx)(d,{})}var u=n(164),O=n(67);var x=function(e){var t,n=null===(t=h())||void 0===t?void 0:t.name;return Object(j.jsx)(a.Fragment,{children:Object(j.jsx)(u.a,{bg:"darkaero",variant:"darkaero",expand:"md",children:Object(j.jsxs)(O.a,{children:[Object(j.jsxs)(u.a.Brand,{href:"/",children:[Object(j.jsx)("img",{alt:"",src:"images/logo.svg",width:"30",height:"30",className:"d-inline-block align-top"})," ","AeroManager"]}),Object(j.jsx)(u.a.Toggle,{"aria-controls":"basic-navbar-nav"}),Object(j.jsx)(u.a.Collapse,{id:"basic-navbar-nav",className:"justify-content-end",children:Object(j.jsxs)(l.a,{className:"me-auto",children:[n&&Object(j.jsxs)(a.Fragment,{children:[Object(j.jsx)(l.a.Link,{href:"/flightlog/new",children:"Nuevo Vuelo"}),Object(j.jsx)(l.a.Link,{href:"/flightlogs",children:"Mis Vuelos"})]}),Object(j.jsx)(b,{})]})})]})})})},p=n(32),g=n(10),f=n(53),v=n.n(f),m=n(9),y=n(79),C=n(35),k=n(31),S="https://aeromanager.herokuapp.com/api/v1";function A(e){return w.apply(this,arguments)}function w(){return(w=Object(y.a)(v.a.mark((function e(t){return v.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.abrupt("return",fetch(S+"/authenticate",{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify(t)}).then((function(e){return e.json()})).catch((function(e){return JSON.parse('{"error": {"user_authentication": "Failed to login: ('.concat(e,')"}}'))})));case 1:case"end":return e.stop()}}),e)})))).apply(this,arguments)}function I(e){var t=e.setToken,n=Object(a.useState)(),c=Object(m.a)(n,2),r=c[0],i=c[1],s=Object(a.useState)(),o=Object(m.a)(s,2),l=o[0],d=o[1],h=Object(a.useState)(""),b=Object(m.a)(h,2),u=b[0],x=b[1],p=Object(g.f)(),f=function(){var e=Object(y.a)(v.a.mark((function e(n){var a,c;return v.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return n.preventDefault(),e.next=3,A({username:r,password:l});case 3:(null===(a=e.sent)||void 0===a?void 0:a.token)?(t(a),p.push("/dashboard")):x((null===a||void 0===a||null===(c=a.error)||void 0===c?void 0:c.user_authentication)||"Invalid user and password");case 5:case"end":return e.stop()}}),e)})));return function(t){return e.apply(this,arguments)}}();return Object(j.jsx)(O.a,{children:Object(j.jsx)(k.a,{children:Object(j.jsxs)(C.a,{className:"text-center col-md-4 offset-md-7 boxed",children:[Object(j.jsx)("h3",{children:"Ingreso al sistema"}),Object(j.jsx)("div",{style:{marginLeft:"auto",textAlign:"center"},children:Object(j.jsxs)("form",{onSubmit:f,children:[Object(j.jsxs)("label",{children:[Object(j.jsx)("p",{children:"Usuario"}),Object(j.jsx)("input",{type:"text",onChange:function(e){return i(e.target.value)}})]}),Object(j.jsxs)("label",{children:[Object(j.jsx)("p",{children:"Contrase\xf1a"}),Object(j.jsx)("input",{type:"password",onChange:function(e){return d(e.target.value)}})]}),Object(j.jsx)("div",{className:"p-3",children:Object(j.jsx)("button",{type:"submit",children:"Login"})})]})}),(null===u||void 0===u?void 0:u.length)>0&&Object(j.jsx)("div",{className:"alert",children:u})]})})})}var D=n(162),T=function(e){return Object(j.jsx)(a.Fragment,{children:Object(j.jsxs)(C.a,{className:"text-center dashboard",children:[Object(j.jsx)("h5",{children:"Sistema de registro de datos para aeroclubes."}),Object(j.jsx)("div",{className:"text-center",children:Object(j.jsx)(D.a,{src:"images/logo.png",title:"Aeromanager",alt:"Logo de la aplicaci\xf3n",width:"90%",style:{maxWidth:"240px"}})})]})})},E=n(47),L=n(23),N=function(e){var t=e.visible,n=Object(a.useState)(t),c=Object(m.a)(n,2),r=c[0],i=c[1],s=Object(g.f)(),o=function(){return i(!1)};return Object(j.jsxs)(E.a,{show:r,onHide:o,backdrop:"static",keyboard:!1,children:[Object(j.jsx)(E.a.Header,{closeButton:!0,children:Object(j.jsx)(E.a.Title,{children:"Finalizar su sesi\xf3n"})}),Object(j.jsx)(E.a.Body,{children:"Esta seguro que dese finalizar su sesi\xf3n y cerrar la app?"}),Object(j.jsxs)(E.a.Footer,{children:[Object(j.jsx)(L.a,{variant:"secondary",onClick:o,children:"Cancelar"}),Object(j.jsx)(L.a,{variant:"primary",onClick:function(){return i(!1),sessionStorage.clear(),s.push("/"),!0},children:"Finalizar"})]})]})},F=n(42),P=n(11),B=n(70),M=n(25),_=n(74),z=n.n(_),V=function(e,t,n){return z.a.post(S+e,t,{headers:{"Content-Type":"application/json",Authorization:"Bearer "+n}})},J=function(e,t){return z.a.get(S+e,{headers:{"Content-Type":"application/json",Authorization:"Bearer "+t}})};var H=function(e){var t=Object(g.f)(),n=Object(a.useState)(""),c=Object(m.a)(n,2),r=c[0],i=c[1],o=Object(a.useState)(h()),l=Object(m.a)(o,2),d=l[0],b=l[1];return Object(j.jsxs)(C.a,{children:[Object(j.jsx)("h1",{children:"Mi cuenta"}),r&&Object(j.jsx)(B.a,{variant:"danger",children:r},"1"),Object(j.jsxs)(P.a,{onSubmit:function(t){t.preventDefault();var n={name:t.target.elements.name.value};V("/user",n,e.token).then((function(e){var t;i(e.message),t=e.user,sessionStorage.setItem("user",JSON.stringify(t))}))},children:[Object(j.jsxs)(P.a.Group,{controlId:"formBasicName",children:[Object(j.jsx)(P.a.Label,{children:"Nombre Completo"}),Object(j.jsx)(P.a.Control,{type:"name",id:"name",placeholder:"Nombre Completo",value:d.name,onChange:function(e){var t=function(){for(var e=arguments.length,t=new Array(e),n=0;n<e;n++)t[n]=arguments[n];return function(e){return t.reduce((function(t,n){return Object(s.a)(Object(s.a)({},t),{},Object(F.a)({},n,e[n]))}),{})}}("email","role","id")(d);t.name=e.target.value,b(t)}})]}),Object(j.jsxs)(P.a.Group,{controlId:"formBasicEmail",children:[Object(j.jsx)(P.a.Label,{children:"E-Mail"}),Object(j.jsx)(P.a.Control,{type:"email",placeholder:"e-mail",value:d.email,readOnly:!0})]}),Object(j.jsx)(P.a.Group,{controlId:"actions",children:Object(j.jsxs)(k.a,{children:[Object(j.jsx)(M.a,{children:Object(j.jsx)(L.a,{type:"button",onClick:function(){t.push("/profile/changePassword")},children:"Cambiar Clave"})}),Object(j.jsx)(M.a,{children:Object(j.jsx)(L.a,{type:"submit",children:"Grabar"})})]})})]})]})};var R=function(e){var t=e.token,n=Object(g.f)(),c=Object(a.useState)(""),r=Object(m.a)(c,2),i=r[0],s=r[1];return Object(j.jsxs)(C.a,{children:[Object(j.jsx)("h1",{children:"Mi cuenta"}),Object(j.jsx)("h2",{children:"Cambiar Contrase\xf1a"}),i&&Object(j.jsx)(B.a,{variant:"danger",children:i},"1"),Object(j.jsxs)(P.a,{onSubmit:function(e){if(e.preventDefault(),0!==e.target.newpass.value.length&&0!==e.target.newpassconfirm.value.length)if(e.target.newpass.value===e.target.newpassconfirm.value){var n={cp:e.target.password.value,np:e.target.newpass.value,npc:e.target.newpassconfirm.value};V("/user/changepass",n,t).then((function(e){s(e.message)}))}else s("Las claves no coinciden");else s("Las claves no pueden ser vacias")},children:[Object(j.jsxs)(k.a,{children:[Object(j.jsx)(P.a.Label,{column:"md",lg:2,children:"Clave actual"}),Object(j.jsx)(M.a,{children:Object(j.jsx)(P.a.Control,{type:"password",id:"password",placeholder:"Clave Actual"})})]}),Object(j.jsxs)(k.a,{children:[Object(j.jsx)(P.a.Label,{column:"md",lg:2,children:"Clave nueva"}),Object(j.jsx)(M.a,{children:Object(j.jsx)(P.a.Control,{type:"password",placeholder:"Clave Nueva",id:"newpass"})})]}),Object(j.jsxs)(k.a,{children:[Object(j.jsx)(P.a.Label,{column:"md",lg:2,children:"Confirmaci\xf3n de clave"}),Object(j.jsx)(M.a,{children:Object(j.jsx)(P.a.Control,{type:"password",placeholder:"Confirme Clave",id:"newpassconfirm"})})]}),Object(j.jsxs)(k.a,{className:"justify-content-md-center",children:[Object(j.jsx)(M.a,{xs:!0,lg:"2",children:Object(j.jsx)(L.a,{type:"submit",variant:"primary",style:{padding:"5pt"},children:"Grabar"})}),Object(j.jsx)(M.a,{xs:!0,lg:"2",children:Object(j.jsx)(L.a,{type:"button",variant:"secondary",style:{padding:"5pt"},onClick:function(){n.goBack()},children:"Cancelar"})})]})]})]})};var G=n(98),q=n(40),X=n(41);var U=function(e){var t=e.row.attributes;return"undefined"!=typeof t&&(console.log(e.row.attributes),Object(j.jsxs)("tr",{children:[Object(j.jsx)("td",{children:e.row.id}),Object(j.jsx)("td",{children:t.airplane}),Object(j.jsx)("td",{children:t.flightStart}),Object(j.jsx)("td",{children:t.flightEnd}),Object(j.jsx)("td",{children:t.normalizedDuration}),Object(j.jsx)("td",{children:t.flightType}),Object(j.jsx)("td",{children:t.originAirport}),Object(j.jsx)("td",{children:t.destinationAirport}),Object(j.jsx)("td",{children:Object(j.jsx)(p.b,{to:"/flightlog/".concat(e.row.id),title:"Ver detalle",children:Object(j.jsx)(q.a,{icon:X.b})})})]}))},W=function(e){return e.loading&&Object(j.jsx)("img",{src:"Bar-Preloader/48x48.gif",alt:"loading"})};var Z=function(e){var t=Object(a.useState)([]),n=Object(m.a)(t,2),c=n[0],r=n[1],i=Object(a.useState)(!0),s=Object(m.a)(i,2),o=s[0],l=s[1];return Object(a.useEffect)((function(){l(!0),J("/flight_logs",e.token).then((function(e){var t;r(null===e||void 0===e||null===(t=e.data)||void 0===t?void 0:t.data),l(!1)})).catch((function(e){l(!1),r([])}))}),[l,e.token]),Object(j.jsxs)(C.a,{className:"boxed",children:[Object(j.jsx)("h1",{children:"Mis Vuelos"}),!o&&(!c||c.length<1)&&Object(j.jsx)("h3",{style:{textAlign:"center"},children:"No hay registros"}),!o&&(null===c||void 0===c?void 0:c.length)>=1&&Object(j.jsxs)(G.a,{striped:!0,bordered:!0,hover:!0,children:[Object(j.jsx)("thead",{children:Object(j.jsxs)("tr",{children:[Object(j.jsx)("th",{children:"#"}),Object(j.jsx)("th",{children:"Avion"}),Object(j.jsx)("th",{children:"Inicio"}),Object(j.jsx)("th",{children:"Fin"}),Object(j.jsx)("th",{children:"Duraci\xf3n"}),Object(j.jsx)("th",{children:"Tipo de Vuelo"}),Object(j.jsx)("th",{children:"Origen"}),Object(j.jsx)("th",{children:"Destino"}),Object(j.jsx)("th",{children:"Aciones"})]})}),Object(j.jsx)("tbody",{children:c.map((function(e){return Object(j.jsx)(U,{row:e})}))})]}),Object(j.jsx)(W,{loading:o})]})};var K=function(e){var t=Object(g.f)(),n=Object(a.useState)(""),c=Object(m.a)(n,2),r=c[0],i=c[1],s=Object(a.useState)({}),o=Object(m.a)(s,2),l=o[0],d=o[1],h=Object(g.g)().id;return Object(a.useEffect)((function(){J("/flight_logs/".concat(h),e.token).then((function(e){var t;d(null===(t=e.data)||void 0===t?void 0:t.data.attributes)})).catch((function(e){i("Imposible obtener datos")}))}),[h,e.token]),Object(j.jsxs)(C.a,{children:[Object(j.jsx)("h1",{children:"Mis vuelos"}),Object(j.jsxs)("h3",{children:["Detalle del vuelo: #",h]}),r&&Object(j.jsx)(B.a,{kind:"warning",children:r}),Object(j.jsx)(G.a,{children:Object(j.jsxs)("tbody",{children:[Object(j.jsxs)("tr",{children:[Object(j.jsx)("th",{children:"Avion:"}),Object(j.jsx)("td",{children:l.airplane})]}),Object(j.jsxs)("tr",{children:[Object(j.jsx)("th",{children:"Inicio"}),Object(j.jsx)("td",{children:l.flightStart})]}),Object(j.jsxs)("tr",{children:[Object(j.jsx)("th",{children:"Fin"}),Object(j.jsx)("td",{children:l.flightEnd})]}),Object(j.jsxs)("tr",{children:[Object(j.jsx)("th",{children:"Duracion normalizada"}),Object(j.jsx)("td",{children:l.normalizedDuration})]}),Object(j.jsxs)("tr",{children:[Object(j.jsx)("th",{children:"Tipo de vuelo"}),Object(j.jsx)("td",{children:l.flightType})]}),l.instructor&&Object(j.jsxs)("tr",{children:[Object(j.jsx)("th",{children:"Instructor"}),Object(j.jsx)("td",{children:l.instructor})]}),Object(j.jsxs)("tr",{children:[Object(j.jsx)("th",{children:"Odometro Inicial"}),Object(j.jsx)("td",{children:l.odoStart})]}),Object(j.jsxs)("tr",{children:[Object(j.jsx)("th",{children:"Odometro Final"}),Object(j.jsx)("td",{children:l.odoEnd})]}),Object(j.jsxs)("tr",{children:[Object(j.jsx)("th",{children:"Aeropuerto Origen"}),Object(j.jsx)("td",{children:l.originAirport})]}),Object(j.jsxs)("tr",{children:[Object(j.jsx)("th",{children:"Aeropuerto Destino"}),Object(j.jsx)("td",{children:l.destinationAirport})]})]})}),Object(j.jsxs)(L.a,{type:"button",onClick:function(){t.goBack()},children:[Object(j.jsx)(q.a,{icon:X.a})," Back"]})]})},Q=n(82),Y=n.n(Q),$=n(99),ee=function e(t){Object($.a)(this,e),t&&Object.keys(t).length>0?(this.airplaneID=t.airplaneID,this.flightStart=t.flightStart,this.flightEnd=t.flightEnd,this.flightType=t.flightType,this.odoEnd=t.odoEnd,this.odoStart=t.odoStart,this.originAirport=t.originAirport,this.destinationAirport=t.destinationAirport,this.instructor=t.instructor):(this.airplaneID="",this.flightStart=Date.now(),this.flightEnd=Date.now(),this.flightType="",this.odoEnd="",this.odoStart="",this.originAirport="",this.destinationAirport="",this.instructor="")};function te(e){var t=Object(a.useState)([]),n=Object(m.a)(t,2),c=n[0],r=n[1],i=Object(a.useState)(e.value),s=Object(m.a)(i,2),o=s[0],l=s[1];Object(a.useEffect)((function(){J(e.apiEndpoint,e.token).then((function(e){return r(e.data.data)})).catch((function(e){return console.log(e)}))}),[r,e.apiEndpoint,e.token]);return Object(j.jsxs)(P.a.Control,{as:"select",id:e.id,custom:!0,onChange:function(t){t.preventDefault(),l(t.target.value),e.onChange&&e.onChange(t)},value:o,disabled:e.disabled,children:[c&&c.length>0&&Object(j.jsx)("option",{value:"-1",children:"Please Select"}),c&&c.length>0&&c.map((function(e){return Object(j.jsx)("option",{value:e.id,children:e.attributes.identifier},e.id)}))]})}te.defaultProps={onChange:function(){},disabled:!1};var ne=te;function ae(e){var t=e.label.toLowerCase().split(" ").map((function(e){return e.replace(/[^a-z]+/g,"")})).join("-");return Object(j.jsxs)(a.Fragment,{children:[Object(j.jsx)(M.a,{md:"2",children:Object(j.jsx)(P.a.Label,{htmlFor:t,children:e.label})}),Object(j.jsx)(M.a,{md:"4",children:Object(j.jsx)(P.a.Control,{type:e.type,name:t,id:t,onChange:function(t){return e.onChange(t)},placeholder:e.placeholder})})]})}ae.defaultProps={type:"text",onChange:function(){}};var ce=ae;function re(e){var t=Object(a.useState)(""),n=Object(m.a)(t,2),c=n[0],r=n[1],i=Object(a.useState)(new Date),o=Object(m.a)(i,2),l=o[0],d=o[1],b=Object(a.useState)(new Date),u=Object(m.a)(b,2),O=u[0],x=u[1],p=new ee(e.flightLogData),f=Object(a.useState)(p),v=Object(m.a)(f,2),y=v[0],S=v[1],A=Object(g.f)(),w=y.airplaneID,I=y.flightType,D=y.odoStart,T=y.odoEnd,E=y.instructor,N=y.destinationAirport,_=y.originAirport,z=function(e,t){S(Object(s.a)(Object(s.a)({},y),{},Object(F.a)({},t,e.target.value)))};return Object(j.jsxs)(C.a,{className:"boxed",children:[Object(j.jsx)("h1",{children:"Nuevo Vuelo"}),Object(j.jsxs)("h3",{children:["Piloto: ",h().name]}),c&&Object(j.jsx)(B.a,{variant:"warning",children:c},"alrmts"),Object(j.jsxs)(P.a,{onSubmit:function(t){t.preventDefault(),console.log(y),V("/flight_logs",{airplane_id:w,flight_start:l,flight_end:O,flight_type:I,odo_start:D,odo_end:T,instructor_id:E,destination_airport:N,origin_airport:_},e.token).then((function(e){!1===e.data.error?A.push("/flightlogs"):r("Fallo al grabar vuelo:"+e.data.message)}))},children:[Object(j.jsxs)(k.a,{children:[Object(j.jsx)(M.a,{md:"2",children:Object(j.jsx)(P.a.Label,{children:"Avion"})}),Object(j.jsx)(M.a,{md:"10",children:Object(j.jsx)(ne,{token:e.token,onChange:function(e){return z(e,"airplaneID")},value:w,apiEndpoint:"/airplanes"})})]}),Object(j.jsxs)(k.a,{children:[Object(j.jsx)(M.a,{md:"2",children:Object(j.jsx)(P.a.Label,{children:"Motivo del vuelo"})}),Object(j.jsx)(M.a,{md:"4",children:Object(j.jsxs)(P.a.Control,{as:"select",id:"flightType",onChange:function(e){return z(e,"flightType")},children:[Object(j.jsx)("option",{value:"TAXI",children:"Taxi"}),Object(j.jsx)("option",{value:"LA",children:"Linea Aerea"}),Object(j.jsx)("option",{value:"TA",children:"Trabajo Aereo"}),Object(j.jsx)("option",{value:"VP",children:"Vuelo Privado"}),Object(j.jsx)("option",{value:"ENT",children:"Entrenamiento"}),Object(j.jsx)("option",{value:"INST",children:"Instrucci\xf3n"}),Object(j.jsx)("option",{value:"I",children:"Instructor"}),Object(j.jsx)("option",{value:"PA",children:"Prueba de Aviones"}),Object(j.jsx)("option",{value:"IP",children:"Inspector"}),Object(j.jsx)("option",{value:"ADAP",children:"Adaptaci\xf3n"}),Object(j.jsx)("option",{value:"READ",children:"Readapaci\xf3n"}),Object(j.jsx)("option",{value:"RP",children:"Remolque de Planeadores"}),Object(j.jsx)("option",{value:"SAN",children:"Sanitario"}),Object(j.jsx)("option",{value:"ACR",children:"Acrobacia"}),Object(j.jsx)("option",{value:"EXA",children:"Examen"}),Object(j.jsx)("option",{value:"FOT",children:"Fotograf\xeda"}),Object(j.jsx)("option",{value:"FOR",children:"Formaci\xf3n"}),Object(j.jsx)("option",{value:"VO",children:"Vuelo Oficial"}),Object(j.jsx)("option",{value:"LP",children:"Lanzamiento de Paracaidistas"})]})}),Object(j.jsx)(M.a,{md:"2",children:Object(j.jsx)(P.a.Label,{children:"Instructor"})}),Object(j.jsx)(M.a,{md:"4",children:Object(j.jsx)(ne,{id:"instructor",token:e.token,value:E,onChange:function(e){return z(e,"instructor")},apiEndpoint:"/users/instructors",disabled:"INST"!==I})})]}),Object(j.jsxs)(k.a,{children:[Object(j.jsx)(M.a,{md:"2",children:Object(j.jsx)(P.a.Label,{children:"Inicio"})}),Object(j.jsx)(M.a,{md:"4",children:Object(j.jsx)(Y.a,{format:"dd-MM-y HH:mm",maxDetail:"minute",minDetail:"decade",value:l,onChange:d,id:"startTime"})}),Object(j.jsx)(M.a,{md:"2",children:Object(j.jsx)(P.a.Label,{children:"Final"})}),Object(j.jsx)(M.a,{md:"4",children:Object(j.jsx)(Y.a,{format:"dd-MM-y HH:mm",maxDetail:"minute",minDetail:"decade",value:O,onChange:x,id:"endTime"})})]}),Object(j.jsxs)(k.a,{children:[Object(j.jsx)(ce,{label:"Odometro Inicial",placeholder:"0",type:"number",value:D,onChange:function(e){return z(e,"odoStart")}}),Object(j.jsx)(ce,{label:"Odometro Final",placeholder:"0",type:"number",value:T,onChange:function(e){return z(e,"odoEnd")}})]}),Object(j.jsxs)(k.a,{children:[Object(j.jsx)(ce,{label:"Aero. Origen",placeholder:"CED",value:_,onChange:function(e){return z(e,"originAirport")}}),Object(j.jsx)(ce,{label:"Aero. Destino",placeholder:"EZE",value:N,onChange:function(e){return z(e,"destinationAirport")}})]}),Object(j.jsxs)(k.a,{style:{textAlign:"center",marginTop:"10pt"},children:[Object(j.jsx)(M.a,{children:Object(j.jsxs)(L.a,{title:"Save details",type:"submit",children:[Object(j.jsx)(q.a,{icon:X.c,size:"lg"})," Save"]})}),Object(j.jsx)(M.a,{children:Object(j.jsxs)(L.a,{onClick:function(e){A.goBack()},children:[Object(j.jsx)(q.a,{icon:X.a})," Back"]})})]})]})]})}re.defaultProps={flightLogData:{}};var ie=re;var se=function(e){var t=function(){var e=Object(a.useState)(function(){var e=sessionStorage.getItem("token"),t=JSON.parse(e);return null===t||void 0===t?void 0:t.token}()),t=Object(m.a)(e,2),n=t[0],c=t[1];return{setToken:function(e){sessionStorage.setItem("token",JSON.stringify({token:e.token})),sessionStorage.setItem("user",JSON.stringify(e.user)),c(e.token)},token:n}}(),n=t.token,c=t.setToken;return Object(j.jsx)(O.a,{className:"p-1",children:Object(j.jsxs)(p.a,{children:[Object(j.jsx)(x,{token:n}),Object(j.jsxs)(g.c,{children:[Object(j.jsx)(g.a,{path:"/login",children:Object(j.jsx)(I,{setToken:c})}),Object(j.jsx)(g.a,{path:"/profile/changePassword",children:Object(j.jsx)(R,{token:n})}),Object(j.jsx)(g.a,{path:"/profile",children:Object(j.jsx)(H,{token:n})}),Object(j.jsx)(g.a,{path:"/flightlog/new",children:Object(j.jsx)(ie,{token:n})}),Object(j.jsx)(g.a,{path:"/flightlog/:id",children:Object(j.jsx)(K,Object(s.a)({token:n},e))}),Object(j.jsx)(g.a,{path:"/flightlogs",children:Object(j.jsx)(Z,{token:n})}),Object(j.jsx)(g.a,{path:"/logout",children:Object(j.jsx)(N,{visible:!0})}),Object(j.jsx)(g.a,{path:"/",children:Object(j.jsx)(T,Object(s.a)({title:"Dashboard"},e))})]})]})})},oe=function(e){e&&e instanceof Function&&n.e(3).then(n.bind(null,165)).then((function(t){var n=t.getCLS,a=t.getFID,c=t.getFCP,r=t.getLCP,i=t.getTTFB;n(e),a(e),c(e),r(e),i(e)}))};i.a.render(Object(j.jsx)(c.a.StrictMode,{children:Object(j.jsx)(se,{})}),document.getElementById("root")),oe()}},[[155,1,2]]]);
//# sourceMappingURL=main.daa6dafd.chunk.js.map