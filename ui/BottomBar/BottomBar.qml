import QtQuick 2.15

Rectangle {
    id: bottomBar
    anchors {
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }
    color: "black"
    height: parent.height / 12

    Image {
        id: carSettingsIcon
        anchors {
            left: parent.left
            leftMargin: 15
            verticalCenter: parent.verticalCenter
        }

        height: bottomBar.height * .85
        fillMode: Image.PreserveAspectFit

        source: "qrc:/images/carSettingsIcon.png"
    }
    
    HVACComponent {
        id: driverHVACControl
        anchors {
            left: carSettingsIcon.right
            leftMargin: 50
            top: parent.top
            bottom: parent.bottom
        }
        hvacController: driverHVAC
    }
    
    Row {
        id: middleIconsRow
        anchors {
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }
        spacing: 40
        
        Image {
            id: musicIcon
            width: bottomBar.height * 0.6
            height: bottomBar.height * 0.6
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/musicIcon.png"
            
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // Add music app functionality here
                    console.log("Music icon clicked")
                }
            }
        }
        
        Image {
            id: mapIcon
            width: bottomBar.height * 0.6
            height: bottomBar.height * 0.6
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/mapIcon.png"
            
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // Add navigation functionality here
                    console.log("Map icon clicked")
                }
            }
        }
        
        Image {
            id: phoneIcon
            width: bottomBar.height * 0.6
            height: bottomBar.height * 0.6
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/phoneCallIcon.png"
            
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // Add phone functionality here
                    console.log("Phone icon clicked")
                }
            }
        }
        
        Image {
            id: videoIcon
            width: bottomBar.height * 0.6
            height: bottomBar.height * 0.6
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/videoIcon.png"
            
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // Add video functionality here
                    console.log("Video icon clicked")
                }
            }
        }
    }
    
    VolumeControlComponent {
        id: volumeControl
        anchors {
            right: parent.right
            rightMargin: 80
            top: parent.top
            bottom: parent.bottom
        }
    }
    
    HVACComponent {
        id: passengerHVACControl
        anchors {
            right: volumeControl.left
            rightMargin: 30
            top: parent.top
            bottom: parent.bottom
        }
        hvacController: passengerHVAC
    }
}
