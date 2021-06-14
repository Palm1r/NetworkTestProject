import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Palm1r.networkProject.DeviceManager 1.0
import Palm1r.networkProject.RootController 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        anchors.fill: parent
        spacing: 50

        Button {
            width: parent.width / 6
            height: width / 2
            text: "find devices"
            onClicked: {
                RootController.findDevices()
            }
        }

        Rectangle {
            width: 30
            height: width
            radius: width / 2
            color: RootController.deviceType() === RootController.Server ?
                       "blue" : "green"
        }
    }
}
