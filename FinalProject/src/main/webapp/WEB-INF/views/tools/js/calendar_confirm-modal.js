"use strict";

class SimpleModal {

  constructor(modalTitle, modalText, acceptText, cancelText) {
    this.modalTitle = modalTitle || "Attention!";
    this.modalText = modalText || "Do you confirm?";
    this.acceptText = acceptText || "Yes!";
    this.cancelText = cancelText || "Noo";

    this.parent = document.body;

    this.modal = undefined;
    this.acceptButton = undefined;
    this.cancelButton = undefined;
    this.closeButton = undefined;
    
    this._createModal();
  }

  question() {
    return new Promise((resolve, reject) => {
      if (!this.modal || !this.acceptButton || !this.cancelButton || !this.closeButton) {
        reject("There was a problem creating the modal window!");
        return;
      }
      this.acceptButton.focus();
	  
      this.acceptButton.addEventListener("click", () => {
        resolve(true);
        console.log("modal_31memberEmail:"+memberEmail+",APPID:"+appointmentID+",memberID"+memberID+",patientName:"+patientName);        
        $.ajax({
				url : 'absentReport',
				type : 'POST',
  				dataType: "text",			
				data : {
					appointmentID : appointmentID,
					memberEmail : memberEmail,	
					patientName : patientName,
					method : "$.ajax()",
					doWhat : "POST"
				},
				success : function(msg) {
					$(".simple-modal-text").text(msg);
					$("body > dialog > div > div.simple-modal-button-group").children().remove();
				}
			})
	 console.log("modal_49memberEmail:"+memberEmail+",APPID:"+appointmentID+",memberID"+memberID+",patientName:"+patientName);        
			
        //this._destroyModal();
      });

      this.cancelButton.addEventListener("click", () => {
        resolve(false);
        console.log("FFFFF");
        this._destroyModal();
      });

      this.closeButton.addEventListener("click", () => {
        resolve(null);
        this._destroyModal();
      })
    })
  }

  _createModal() {
    // Background dialog
    this.modal = document.createElement('dialog');
    this.modal.classList.add('simple-modal-dialog');
    this.modal.show();

    // Message window
    const window = document.createElement('div');
    window.classList.add('simple-modal-window');
    this.modal.appendChild(window);

    // Title
    const title = document.createElement('div');
    title.classList.add('simple-modal-title');
    window.appendChild(title);

    // Title text
    const titleText = document.createElement('span');
    titleText.classList.add('simple-modal-title-text');
    titleText.textContent = this.modalTitle;
    title.appendChild(titleText);

    // Close
    this.closeButton = document.createElement('button');
    this.closeButton.type = "button";
    this.closeButton.innerHTML = "&times;";
    this.closeButton.classList.add('simple-modal-close');
    title.appendChild(this.closeButton);

    // Main text
    const text = document.createElement('span');
    text.classList.add('simple-modal-text');
    text.textContent = this.modalText;
    window.appendChild(text);

    // Accept and cancel button group
    const buttonGroup = document.createElement('div');
    buttonGroup.classList.add('simple-modal-button-group');
    window.appendChild(buttonGroup);

    // Accept button
    this.acceptButton = document.createElement('button');
    this.acceptButton.type = "button";
    this.acceptButton.classList.add('simple-modal-button-green');
    this.acceptButton.textContent = this.acceptText;
    buttonGroup.appendChild(this.acceptButton);

    // Cancel button
    this.cancelButton = document.createElement('button');
    this.cancelButton.type = "button";
    this.cancelButton.classList.add('simple-modal-button-red');
    this.cancelButton.textContent = this.cancelText;
    buttonGroup.appendChild(this.cancelButton);

    // Let's rock
    this.parent.appendChild(this.modal);
    
  }

  _destroyModal() {
    this.parent.removeChild(this.modal);
    delete this;
  }
}

