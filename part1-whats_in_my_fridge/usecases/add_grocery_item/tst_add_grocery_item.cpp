#include <QtTest>
#include <QCoreApplication>

// add necessary includes here

class Usecases_add_grocery_item : public QObject
{
    Q_OBJECT

public:
    Usecases_add_grocery_item();
    ~Usecases_add_grocery_item();

private slots:
    void item_can_be_added();

};

Usecases_add_grocery_item::Usecases_add_grocery_item()
{

}

Usecases_add_grocery_item::~Usecases_add_grocery_item()
{

}

void Usecases_add_grocery_item::item_can_be_added()
{
    // Given I am given a list of available groceries
    //    QFAIL("Not implemented");
    auto checkAvailableGroceries = new usecases::CheckAvailableGroceries(m_groceryItems, this);
    QSignalSpy checkAvailableGroceriesSuccess(checkAvailableGroceries, &usecases::CheckAvailableGroceries::success);
    checkAvailableGroceries->run();
    QTRY_COMPARE_WITH_TIMEOUT(checkAvailableGroceriesSuccess.count(), 1, 1000);
    delete checkAvailableGroceries;

    // When I add a grocery item with name X
    QFAIL("Not implemented");

    // Then the grocery item with name X is contained in the list
    QFAIL("Not implemented");

    // And (then) the groceries are ordered by name, ascending
    // QFAIL("Not implemented");
    QVERIFY(groceryItems->isSortedBy("name", "ASC"));
}

QTEST_MAIN(Usecases_add_grocery_item);

#include "tst_add_grocery_item.moc"
