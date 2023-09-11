#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    //    QCoreApplication::setApplicationName("What's in my fridge?");
    QCoreApplication::setApplicationVersion("v1.0.0");
    // QQuickStyle::setStyle("Material");
    // QQuickStyle::setFallbackStyle("Material");

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    qDebug() << "Style(s) available: " << QQuickStyle::name();

    return app.exec();
}
