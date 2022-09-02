from datetime import datetime
import pygame
import os

screenWidth = 1700
screenHeight = 800
backgroundColor = (20,20,20)
primaryColor = (255,0,0)
primaryColorDark = (153,0,0)
primaryColorLight = (225,51,51)
borderColor = (150,150,150)
textColor = (200,200,200)
fontName = "Times New Roman"
messageList = ["GUI node started."]

imageRatio = 9/16
#capture_path = "/home/ds332a/rover_code/src/rover_pkg/src/image_captures/"
capture_path = 'H:\\Documents\\Code\\rover\\image_captures\\'
gui_resource_path = 'H:\\Documents\\Code\\rover\\gui_recources\\'

pygame.init()

fontSizeFactor = 50
font = pygame.font.SysFont(fontName, int(screenHeight/fontSizeFactor))
global screen
screen = pygame.display.set_mode([screenWidth, screenHeight], pygame.RESIZABLE)

image1raw = pygame.image.load(gui_resource_path+"no_file_loaded.jpeg")
image2raw = pygame.image.load(gui_resource_path+"filler.jpeg")
image3raw = pygame.image.load(gui_resource_path+"microscope_filler.jpg")
armIcon = pygame.image.load(gui_resource_path+"arm.png")

iconScaleFactors = [0.35]
compressedIcons = [armIcon]
rawIcons = [armIcon]

imageSizeScaleH = 0.25
compressedImages = [image1raw,image2raw,image3raw]
rawImages = [image1raw,image2raw,image3raw]

currentTestStation = (0,0)
lifeTestData = [(-1,-1,-1),(-1,-1,-1),(-1,-1,-1),(-1,-1,-1)]

microscopeShotNames = [[],[],[],[]]
microscpoeStreamID = 2

####################################################################################################
####################################################################################################
#####                               UTILITY FUNCTIONS AND OBJECTS							   #####

def writeScienceData():
	pass

def drawCenteredText(text, centerx, ypos):
	text_width, text_height = font.size(text)
	text_surface = font.render(text, True, textColor)
	screen.blit(text_surface, (screenWidth*centerx-text_width/2,ypos*screenHeight))


def handleMessage(message):
	messageList.append(message)
	if len(messageList)>5:
		messageList.pop(0)

def drawTextBox(width, x, y, txt1, txt2):
	text_surface = font.render(txt1, True, textColor)
	screen.blit(text_surface, (x,y))
	
	text_width, text_height = font.size(txt2)
	text_surface = font.render(txt2, True, textColor)
	screen.blit(text_surface, (x+width-text_width,y))

def drawThrottleBar(width, height, x, y, motor, vel):
	maxVel = 20
	throttle = abs(float(vel)/maxVel)
	thickness = int(height/5)
	pygame.draw.rect(screen, borderColor, pygame.Rect(x,y,width,height), thickness)
	gapThickness = thickness*1.5
	if vel>0:	
		pygame.draw.rect(screen, (0,255,0), pygame.Rect(x+width/2, y+gapThickness, int(throttle*width/2), height-2*gapThickness))
	else:		
		pygame.draw.rect(screen, (255,0,0), pygame.Rect(x+width/2-int(throttle*width/2), y+gapThickness, int(throttle*width/2), height-2*gapThickness))
	
	drawTextBox(screenWidth*0.09, x+width+thickness, y+thickness/2, motor, "%s rad/s"%vel)
	
def drawFillBar(width, height, x, y, label, val, maxVal, unit, color):
	throttle = float(val)/maxVal
	thickness = int(height/5)
	pygame.draw.rect(screen, borderColor, pygame.Rect(x,y,width,height), thickness)	
	
	gapThickness = thickness*1.5
	pygame.draw.rect(screen, color, pygame.Rect(x+gapThickness, y+gapThickness, int(throttle*(width-2*gapThickness)), height-2*gapThickness))
	
	text_width, text_height = font.size(label)
	text_surface = font.render(label, True, textColor)
	screen.blit(text_surface, (x+thickness,y-text_height))
		
	text_surface = font.render("%s %s "%(val, unit), True, textColor)
	screen.blit(text_surface, (x+width+thickness,y+thickness/2))
	

def readCaptureFolder():
	res = []
	for item in os.listdir(capture_path):
		# check if current path is a file
		if os.path.isfile(os.path.join(capture_path, item)):
			res.append(item)    
	return res
	
class Button():
	activated = 0
	def __init__(self, xpos, ypos, width, height, text):
		self.xpos  = xpos
		self.ypos = ypos
		self.width = width
		self.height = height
		self.text = text
		
	def handle(self, mpos, clicked):
		x = screenWidth * self.xpos
		y = screenHeight * self.ypos
		w = screenWidth * self.width
		h = screenHeight * self.height
		
		if (x<mpos[0] and mpos[0]<x+w and y<mpos[1] and mpos[1]<y+h):		
			pygame.draw.rect(screen, primaryColorLight, pygame.Rect(x, y, w, h))
			pygame.draw.rect(screen, primaryColor, pygame.Rect(x, y, w, h),2)
			if clicked:				
				self.activated = not self.activated
		else:
			pygame.draw.rect(screen, primaryColor, pygame.Rect(x, y, w, h))
			pygame.draw.rect(screen, primaryColorDark, pygame.Rect(x, y, w, h),2)
		
		text_width, text_height = font.size(self.text)
		text_surface = font.render(self.text, True, textColor)
		screen.blit(text_surface, (x+w/2-text_width/2,y+h/2-text_height/2))
		
		
		return self.activated
		
	def deactivate(self):
		self.activated = 0

def resizeThings(event):
	global screenWidth
	global screenHeight
	screenWidth, screenHeight = event.size
	global font
	font = pygame.font.SysFont(fontName, int(screenHeight/fontSizeFactor))
	resizeImages()
	resizeIcons()
	
def resizeIcons():
	global compressedIcons
	for i in range(len(compressedIcons)):
		originalRatioWoH= rawIcons[i].get_width()/rawIcons[i].get_height()
		newHeight = iconScaleFactors[i]*screenHeight
		compressedIcons[i] =  pygame.transform.scale(rawIcons[i], (newHeight*originalRatioWoH,newHeight))

def resizeImages():	
	global compressedImages
	for i in range(len(compressedImages)):
		originalRatioWoH= rawImages[i].get_width()/rawImages[i].get_height()
		newHeight = imageSizeScaleH*screenHeight
		compressedImages[i] =  pygame.transform.scale(rawImages[i], (newHeight*originalRatioWoH,newHeight))

def obscureScreen():
	# make a rect to hide the background			
	hideRect = pygame.Surface((screenWidth,screenHeight))
	hideRect.fill((250,250,250))
	hideRect.set_alpha(80)
	screen.blit(hideRect, (0,0))


####################################################################################################
####################################################################################################
#####                                   HANDLE PYGAME EVENTS								   #####

def handleScreenEvents(eventList):
	results = [0]
	for event in eventList:
			if event.type == pygame.QUIT:
				pygame.quit()
				
			if event.type == pygame.VIDEORESIZE:
				resizeThings(event)	
				
			if event.type == pygame.MOUSEBUTTONUP:
				results[0] = 1
				
			if event.type == pygame.KEYDOWN:
				results.append(event)

	if (len(results) == 1):
		results.append(-1)

	return results

####################################################################################################
####################################################################################################
#####                                   CONFIRM ACTION LOOP									   #####


def confirmAction(text):
	obscureScreen()

	buttonHeight = 0.56
	noButton = Button(0.35, buttonHeight, 0.1, 0.05, "NO")
	yesButton = Button(0.55, buttonHeight, 0.1, 0.05, "YES")

	menuWidth = screenWidth*0.35
	menuHeight = screenHeight*0.25

	pygame.draw.rect(screen, backgroundColor, pygame.Rect(screenWidth/2-menuWidth/2,screenHeight/2-menuHeight/2,menuWidth,menuHeight))
	pygame.draw.rect(screen, borderColor, pygame.Rect(screenWidth/2-menuWidth/2,screenHeight/2-menuHeight/2,menuWidth,menuHeight),5)	

	while True:
		clicked, keyEvent = handleScreenEvents(pygame.event.get())
		mousePos = pygame.mouse.get_pos()

		drawCenteredText(text, 0.5, 0.45)
		drawCenteredText("Would you like to continue?", 0.5, 0.5)		 
	
		if yesButton.handle(mousePos, clicked):
			return True
		if noButton.handle(mousePos, clicked):
			return False

		pygame.display.update()


####################################################################################################
####################################################################################################
#####                                   SAVE SCIENCE DATA									   #####
def saveScienceDataMenu():
	obscureScreen()
	stationName = "%s.%s"%(currentTestStation[0],currentTestStation[1])

	buttonHeight = 0.73
	saveButton = Button(0.55, buttonHeight, 0.1, 0.05, "Save")
	cancelButton = Button(0.35, buttonHeight, 0.1, 0.05, "Cancel")

	menuWidth = screenWidth*0.4
	menuHeight = screenHeight*0.6

	pygame.draw.rect(screen, backgroundColor, pygame.Rect(screenWidth/2-menuWidth/2,screenHeight/2-menuHeight/2,menuWidth,menuHeight))
	pygame.draw.rect(screen, borderColor, pygame.Rect(screenWidth/2-menuWidth/2,screenHeight/2-menuHeight/2,menuWidth,menuHeight),5)
	typeAreaW = screenWidth*0.35
	typeAreaH = screenHeight*0.3
	typeAreaY = screenHeight*0.4
	
	text = "Saving science data for station "+stationName
	text_width, text_height = font.size(text)
	text_surface = font.render(text, True, textColor)
	screen.blit(text_surface, (screenWidth/2-text_width/2,screenHeight*0.25))

	text = "[insert station data]"
	text_width, text_height = font.size(text)
	text_surface = font.render(text, True, textColor)
	screen.blit(text_surface, (screenWidth/2-text_width/2,screenHeight*0.3))

	text = "Add a note:"
	text_width, text_height = font.size(text)
	text_surface = font.render(text, True, textColor)
	screen.blit(text_surface, (screenWidth/2-text_width/2,screenHeight*0.35))

	saveDataMode = 1
	notes = ""
	while saveDataMode:		
		pygame.draw.rect(screen, (255,255,255), pygame.Rect(screenWidth/2-typeAreaW/2,typeAreaY,typeAreaW,typeAreaH))
		pygame.draw.rect(screen, (255,255,255), pygame.Rect(screenWidth/2-typeAreaW/2,typeAreaY,typeAreaW,typeAreaH),2)

		mousePos = pygame.mouse.get_pos()
		events = handleScreenEvents(pygame.event.get())
		clicked = events[0]
		keyEvent = events[1]


		if (not (keyEvent==-1)): 
			if keyEvent.key == pygame.K_BACKSPACE:  
				notes = notes[:-1]	  
			else:
				notes += keyEvent.unicode

		if cancelButton.handle(mousePos, clicked):
			saveDataMode = 0

		if saveButton.handle(mousePos, clicked):
			if confirmAction("You are about to save the data for station "+stationName):				
				handleMessage("Station %s data saved." %currentTestStation)
				#save the data
			else:
				saveDataMode = 0

		printing = 1
		charactersPerRow = int(screenWidth/24)
		row = 0
		textgap  = screenHeight*0.0275
		toPrint = notes
		while printing:
			if len(toPrint) < charactersPerRow:
				printing = 0
				text = toPrint
			else:
				text = toPrint[:charactersPerRow]
				toPrint = toPrint[charactersPerRow:]
				
			text_surface = font.render(text, True, (0,0,0))
			screen.blit(text_surface, (screenWidth*0.34,screenHeight*0.41+textgap*row))
			row = row+1


		pygame.display.update()

####################################################################################################
####################################################################################################
#####                                    SAVE IMAGE LOOP									   #####
def saveImageScreen():
	obscureScreen()

	saveImageButton = Button(0.58, 0.68, 0.1, 0.05, "Save")
	cancelImageButton = Button(0.32, 0.68, 0.1, 0.05, "Cancel")	
	selectImageButton = Button(0.45, 0.68, 0.1, 0.05, "Select")

	selectedImage = 0
	fileName = '123'
	captureImageMode = 1
	while captureImageMode:			
			
		mousePos = pygame.mouse.get_pos()
		events = handleScreenEvents(pygame.event.get())
		clicked = events[0]
		keyEvent = events[1]		

		if (not (keyEvent==-1)): 
			if keyEvent.key == pygame.K_BACKSPACE:  
				fileName = fileName[:-1]	  
			else:
				fileName += keyEvent.unicode
					
		menuWidth = screenWidth*0.4
		menuHeight = screenHeight*0.5
		
		pygame.draw.rect(screen, backgroundColor, pygame.Rect(screenWidth/2-menuWidth/2,screenHeight/2-menuHeight/2,menuWidth,menuHeight))	
		pygame.draw.rect(screen, borderColor, pygame.Rect(screenWidth/2-menuWidth/2,screenHeight/2-menuHeight/2,menuWidth,menuHeight),stroke)
		screen.blit(compressedImages[selectedImage],(screenWidth/2-compressedImages[selectedImage].get_width()/2,screenHeight/2-compressedImages[selectedImage].get_height()/2))
		
		text_width, text_height = font.size("NAME: %s.png"%fileName)
		text_surface = font.render("NAME: %s.png"%fileName, True, textColor)
		screen.blit(text_surface, (screenWidth/2-text_width/2,screenHeight*0.28))
		
		# save the current image
		if saveImageButton.handle(mousePos, clicked):
			saveImageButton.deactivate()
			pygame.image.save(rawImages[selectedImage],'%s%s.JPEG'%(capture_path, fileName))
			handleMessage("Image saved as "+fileName+".png to image path.")
			captureImageMode = 0
			if selectedImage == microscpoeStreamID:
				global microscopeShotNames
				microscopeShotNames[currentTestStation[0]].append(fileName+".png to image path.")

		# cancel image save screen
		if cancelImageButton.handle(mousePos, clicked):
			cancelImageButton.deactivate()
			captureImageMode = 0

		# cycle through image feeds
		if selectImageButton.handle(mousePos, clicked):
			selectedImage = selectedImage+1
			if selectedImage > len(rawImages)-1:
				selectedImage = 0
			selectImageButton.deactivate()
			
		
		pygame.display.update()


####################################################################################################
####################################################################################################
#####                                      MAIN LOOP										   #####
		
	
if __name__ == '__main__':

	# Set up the drawing window
	pygame.display.set_caption('WSU Rover Team')
	
	# Run until the user asks to quit
	running = True
	userTextInput = []
	
	captureImageButton = Button(0.65, 0.5, 0.08, 0.04, "Capture Image")
	writeSpectrometerDataButton = Button(0.18, 0.74, 0.09, 0.03, "Make Site Report")
	resizeImages()
	resizeIcons()
	while running:
		
		clicked = 0
		mousePos = pygame.mouse.get_pos()

		events = handleScreenEvents(pygame.event.get())
		clicked = events[0]
		keyevent = events[1]		
			
		xalignl = screenWidth*0.017
		stroke = 5
		
		##########################################################
		##### 		   			RESET SCREEN			 	 #####
		screen.fill(backgroundColor)
				
		##########################################################
		##### 		   			MESSAGE BOARD			 	 #####
		pygame.draw.rect(screen, borderColor, pygame.Rect(xalignl, screenHeight*0.04, screenWidth*0.25, screenHeight/7),stroke)
		spacing = screenHeight*0.022
		for i in range(len(messageList)):
			text_surface = font.render(messageList[i], True, (255,0,0))
			screen.blit(text_surface, (xalignl+screenWidth*0.01,screenHeight*0.05+spacing*i))
		
		##########################################################
		##### 		   ROCKER BOGIE THROTTLE BARS		 	 #####
		barHeight = screenHeight*0.02
		barWidth = screenWidth*0.094
		spacing = screenHeight*0.0264
		yalign = screenHeight*0.22
		
		drawThrottleBar(barWidth,barHeight,xalignl,yalign+0*spacing,"RB_FR",-10)
		drawThrottleBar(barWidth,barHeight,xalignl,yalign+1*spacing,"RB_MR",-11)
		drawThrottleBar(barWidth,barHeight,xalignl,yalign+2*spacing,"RB_RR",-9.5)
		drawThrottleBar(barWidth,barHeight,xalignl,yalign+3*spacing,"RB_FL",15.2)
		drawThrottleBar(barWidth,barHeight,xalignl,yalign+4*spacing,"RB_ML",16.1)
		drawThrottleBar(barWidth,barHeight,xalignl,yalign+5*spacing,"RB_RL",15.7)
		drawFillBar(screenWidth*0.2, barHeight, xalignl, yalign+7*spacing, "THROTTLE", 35.4, 100, "%", (0,255,0))
		
		rbr_temp = 42.8
		rbl_temp = 43.12	
		text_surface = font.render("%s C"%rbl_temp, True, textColor)
		screen.blit(text_surface, (screenWidth*0.22,yalign+4*spacing))
		text_surface = font.render("%s C"%rbr_temp, True, textColor)
		screen.blit(text_surface, (screenWidth*0.22,yalign+1*spacing))
		

		##########################################################
		##### 		   			SCIENCE STUFF			 	 #####
		
		barWidth = screenWidth*0.0943
		yalign = 0.48*screenHeight
		drawFillBar(barWidth, barHeight, xalignl, yalign, "BENEDICT SOL'N", 2.51, 3, "mL", (0,102,204))	
		drawFillBar(barWidth, barHeight, xalignl, yalign+screenHeight*0.045, "BIURET REAGENT", 1.2, 3, "mL", (102,0,204))
		pygame.draw.rect(screen, (255,255,255), pygame.Rect(xalignl, yalign+screenHeight*0.075, screenWidth*0.25, screenHeight*0.1452))
		pygame.draw.rect(screen, borderColor, pygame.Rect(xalignl, yalign+screenHeight*0.075, screenWidth*0.25, screenHeight*0.1452),5)

		gap = screenHeight*0.23
		drawTextBox(screenWidth*0.1, xalignl, yalign+gap, "PROTIENS: ", "N/A")
		drawTextBox(screenWidth*0.1, xalignl, yalign+gap+screenHeight*0.025, "GLUCOSE: ", "N/A")
		drawTextBox(screenWidth*0.1, xalignl+screenWidth*0.15, yalign+gap, "SAMPLE: ", "2B")
		
		##########################################################
		##### 		   			ARM GRAPHICS			 	 #####
		screen.blit(compressedIcons[0],(screenWidth/2-compressedIcons[0].get_width()/2,screenHeight*0.45))	
			
		
		##########################################################
		##### 		   		BOTTOM RIGHT DATA			 	 #####

		yalign = screenHeight*0.8
		spacing = screenHeight*0.025
		boxWidth = screenWidth*0.2
		
		qdc_status = "LOCKED"
		voltage = 12.33
		current = 1.2
		ping = 12.2
		pressure = 16.3
		RSSI = 10.2		
		
		drawTextBox(boxWidth, xalignl, yalign+spacing*0, "QUICK DISCONNECT:", "%s"%qdc_status)
		drawTextBox(boxWidth, xalignl, yalign+spacing*1, "BATTERY VOLTAGE:", "%s V"%voltage)
		drawTextBox(boxWidth, xalignl, yalign+spacing*2, "CURRENT DRAW:", "%s A"%current)
		drawTextBox(boxWidth, xalignl, yalign+spacing*3, "PING:", "%s"%ping)
		drawTextBox(boxWidth, xalignl, yalign+spacing*4, "AMBIENT PRESSURE:", "%s kPa"%pressure)
		drawTextBox(boxWidth, xalignl, yalign+spacing*5, "RSSI:", "%s"%RSSI)
		
		##########################################################
		##### 		   			CAMERA FEED				 	 #####			
		streamHeight = screenHeight*imageSizeScaleH
		streamOffsety1 = screenHeight*0.03
		streamWidth = screenHeight*imageRatio

		pygame.draw.rect(screen, borderColor, pygame.Rect(screenWidth/2-streamWidth/2,streamOffsety1,streamWidth,streamHeight),5)		
		screen.blit(compressedImages[0],(screenWidth/2-compressedImages[0].get_width()/2,streamOffsety1))		
		pygame.draw.rect(screen, borderColor, pygame.Rect(screenWidth*0.7,streamOffsety1,streamWidth,streamHeight),5)


		##########################################################
		##### 		   			BUTTONS					 	 #####	

		if writeSpectrometerDataButton.handle(mousePos, clicked):
			saveScienceDataMenu()
			writeSpectrometerDataButton.deactivate()			
		
		if captureImageButton.handle(mousePos, clicked):			
			saveImageScreen()
			captureImageButton.deactivate()


		pygame.display.update()
	
	pygame.quit()