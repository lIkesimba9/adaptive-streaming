TEMPLATE = app
CONFIG += c++14
CONFIG -= app_bundle
CONFIG -= qt
QMAKE_LFLAGS += -pthread
PKGCONFIG += gstreamer-1.0 \
            glib-2.0 \
            gio-2.0

INCLUDEPATH += /usr/include/gstreamer-1.0/

CONFIG += link_pkgconfig
PKGCONFIG += gstreamer-1.0 glib-2.0 gobject-2.0 gstreamer-app-1.0 gstreamer-pbutils-1.0

unix: CONFIG += link_pkgconfig
unix: PKGCONFIG += /usr/lib/x86_64-linux-gnu/pkgconfig/gstreamer-1.0.pc

HEADERS += \
    Common/Common.h \
    Common/Constants.h \
    Common/DeviceDatatypes.h \
    Common/NTPTime.h \
    Common/PipelineManager.h \
    Common/QoSEstimator.h \
    RTSPStreamServer/IPCMessageHandler.h \
    RTSPStreamServer/RTSPAdaptiveStreaming.h \
    RTSPStreamServer/RTSPStreamServer.h

SOURCES += \
    Common/PipelineManager.cpp \
    Common/QoSEstimator.cpp \
    RTSPStreamServer/IPCMessageHandler.cpp \
    RTSPStreamServer/RTSPAdaptiveStreaming.cpp \
    RTSPStreamServer/RTSPStreamServer.cpp \
    RTSPStreamServer/stream_server.cpp

unix: PKGCONFIG += /usr/lib/x86_64-linux-gnu/pkgconfig/gstreamer-rtsp-server-1.0.pc

unix: PKGCONFIG += /usr/lib/x86_64-linux-gnu/pkgconfig/gstreamer-rtsp-1.0.pc

unix: PKGCONFIG += /usr/lib/x86_64-linux-gnu/pkgconfig/gstreamer-rtp-1.0.pc
