import QtQuick 2.0

Rectangle {
	id: screen

	width: 360
	height: 360

	signal clicked

	Text {
		text: qsTr("Hello World")
		anchors.centerIn: parent
	}
	MouseArea {
		anchors.fill: parent
		onClicked: {
			screen.clicked()
		}
	}
}
