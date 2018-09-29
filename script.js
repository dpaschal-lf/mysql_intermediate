$(document).ready(startApp);

function startApp(){
	loadUserData();
	$(".closeButton, #modalShadow").on('click', hideModal);

}

function hideModal(){
	$("#modalShadow").hide();
}

function loadUserData(){
	const options = {
		url: 'dummydata-user.json',
		method: 'get',
		dataType: 'json',
	}
	$.ajax(options).then( usersLoaded )
}
function loadConversationData( userID ){
	const options = {
		url: 'dummydata-comms.json',
		method: 'post',
		dataType: 'json',
		data: {
			id: userID
		}
	}
	$.ajax(options).then( commsLoaded );
}

function loadThreadData( threadID ){
	const options = {
		url: 'dummydata-threads.json',
		method: 'post',
		dataType: 'json',
		data: {
			id: threadID
		}
	}
	$.ajax(options).then( threadLoaded );
}

function usersLoaded(userData){
	if(!userData.success){
		return false;
	}
	const userTemplate = $("#user-template");
	const userList = $("#userList").empty();
	for(let userI=0; userI < userData.users.length; userI++){
		let element = translateTemplate( userTemplate, 'user', userData.users[userI]);
		(()=>{
			let user = userData.users[userI];
			element.click( ()=>{
				console.log('test', user.id);
				loadConversationData( user.id)
			});
		})();
		userList.append(element );
	}
}
function commsLoaded(commsData){
	if(!commsData.success){
		return false;
	}
	const commsTemplate = $("#message-template");
	const messagesList = $("#conversations").empty();
	for(let messageI=0; messageI < commsData.messages.length; messageI++){
		
		let element = translateTemplate( commsTemplate, 'message', commsData.messages[messageI]) ;
		(()=>{
			let thread = commsData.messages[messageI];
			element.click( ()=>{
				loadThreadData( thread.threadID);
			});
		})();
		messagesList.append( element );
	}	
}
function threadLoaded(commsData){
	if(!commsData.success){
		return false;
	}
	const commsTemplate = $("#thread-template");
	$("#modalShadow").show();
	const messagesList = $("#modalText").empty().addClass('scrollY');
	for(let messageI=0; messageI < commsData.messages.length; messageI++){
		messagesList.append( );
		let element = translateTemplate( commsTemplate, 'message', commsData.messages[messageI]) ;
		messagesList.append(element);
	}	
}

function translateTemplate( sourceTemplate, newClass, dataSource){
	var clone = sourceTemplate.clone();
	clone.prop('id','').addClass(newClass);
	clone.find('*').each((index, element)=>{
		const text = $(element).text();
		let matches = text.match(/^(.*){(.*)}(.*)$/);
		if( matches!==null ){
			$(element).text( matches[1] + dataSource[matches[2]] + matches[3]);
		}
	});
	

	return clone
}
