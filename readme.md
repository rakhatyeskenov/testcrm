# Дипломный проект 

## Тема: Сервис для автоматизации работы предприятия общепита

Пример существующих сервисов: 

Главный сервис источник, на котором лучше всего основываться: https://ytimes.ru/
Также есть документация, где можно найти полезную информацию https://ytimes-2.gitbook.io/cafe/

Дополнительный пример из сервисов: https://iiko.ru/

## Стек используемых технологий:

Пока что такой стек:

Фронтенд: ReactJS
Бэкенд: Node.js с использованием фреймворка Express.js
База данных: PostgreSQL
Хостинг: Firebase

## Сущности и их аттрибуты, которые были определены:

1. Клиенты
2. Заказы
3. Товары
4. Категории товаров
5. Сотрудники
6. Роли сотрудников
7. Склады
8. Поставщики
9. Закупки
10. Скидки
11. Акции

Давайте опишем каждую сущность и ее атрибуты:
1. Клиенты
Идентификатор (ID)
Имя (Name)
Фамилия (Surname)
Телефон (Phone)
Электронная почта (Email)
Адрес (Address)
2. Заказы
Идентификатор (ID)
Дата (Date)
Время (Time)
Клиент (CustomerID)
Сотрудник (EmployeeID)
Сумма заказа (TotalAmount)
Скидка (Discount)
Статус (Status)
3. Товары
Идентификатор (ID)
Название (Name)
Описание (Description)
Цена (Price)
Количество (Quantity)
Категория (CategoryID)
Изображение (Image)
4. Категории товаров
Идентификатор (ID)
Название (Name)
5. Сотрудники
Идентификатор (ID)
Имя (Name)
Фамилия (Surname)
Телефон (Phone)
Электронная почта (Email)
Адрес (Address)
Дата рождения (DateOfBirth)
Дата найма (HireDate)
Роль (RoleID)
6. Роли сотрудников
Идентификатор (ID)
Название (Name)
7. Склады
Идентификатор (ID)
Название (Name)
Адрес (Address)
8. Поставщики
Идентификатор (ID)
Название (Name)
Контактное лицо (ContactPerson)
Телефон (Phone)
Адрес (Address)
Электронная почта (Email)
9. Закупки
Идентификатор (ID)
Дата (Date)
Поставщик (SupplierID)
Товар (ProductID)
Количество (Quantity)
Цена (Price)
10. Скидки
Идентификатор (ID)
Название (Name)
Тип скидки (DiscountType)
Значение скидки (DiscountValue)
11. Акции
Идентификатор (ID)
Название (Name)
Описание (Description)
Дата начала (StartDate)
Дата окончания (EndDate)

## Далее была сделана примерная ER-диаграмма, по ссылке можно посмотреть:
https://drive.google.com/file/d/1oHBli35o6d3BezAycajDkW-1WYmns9Fr/view?usp=sharing

## Также создана база данных:
По этой ссылке можно посмотреть какие таблицы и аттрибуты есть:
https://github.com/rakhatyeskenov/testcrm/blob/master/db/entities.sql


## Также определили бизнес-процессы:

1. Управление заказами и обслуживание клиентов: Процесс принятия заказов от клиентов, их обработки, подготовки и доставки. Включает в себя учет оплаты, контроль качества обслуживания и обратную связь с клиентами.
2. Управление поставками и инвентаризация: Процесс управления запасами, заказом и поставкой необходимых продуктов, ингредиентов и расходных материалов. Включает в себя контроль качества товаров, учет поступлений и расходов, инвентаризацию и оптимизацию запасов.
3. Управление персоналом и график работы: Процесс найма, обучения, управления и контроля работы персонала. Включает составление графика работы, учет рабочего времени, оплату труда, управление отпусками и другими аспектами связанными с персоналом.
4. Управление меню и ценообразование: Процесс разработки и обновления меню, установки цен на продукты и актуализации информации о наличии и стоимости блюд. Включает планирование сезонных меню, анализ конкурентов и учет стоимости ингредиентов при установке цен.
5. Маркетинг и привлечение клиентов: Процесс разработки и реализации маркетинговых стратегий, проведения рекламных кампаний, управления лояльностью клиентов и акциями для привлечения новых и удержания существующих клиентов.
6. Финансовый учет и анализ: Процесс учета доходов и расходов, составления финансовых отчетов, анализа финансовых показателей и планирования бюджета. Включает в себя учет операционных расходов, контроль прибыли и управление финансовыми ресурсами.

## Функциональность 

1. Управление клиентской базой данных:
- Регистрация и аутентификация клиентов
- Управление профилем клиентов
- История заказов и покупок клиентов
- Управление программами лояльности и скидками

2. Управление меню и продуктами:
- Создание и управление каталогом продуктов
- Управление ценами и акциями на продукты
- Отслеживание доступности продуктов на складе
- Управление рецептами и ингредиентами

3. Управление заказами и доставкой:
- Оформление и отслеживание заказов
- Управление статусами заказов
- Мониторинг и оптимизация процесса доставки
- Уведомления и обратная связь с клиентами

4. Управление персоналом:
- Учет сотрудников и их ролей
- Расписание работы и управление графиком смен
- Управление задачами и заданиями для сотрудников
- Отслеживание производительности и оценка работы персонала

5. Учет и отчетность по финансам:
- Учет выручки и расходов
- Финансовые отчеты и аналитика
- Учет налогов и сборов
- Бюджетирование и прогнозирование

6. Аналитика и отчетность:
- Генерация отчетов и статистики по продажам, клиентам и другим параметрам
- Анализ данных для принятия управленческих решений
- Мониторинг и улучшение эффективности бизнес-процессов

7. Интеграция с внешними системами:
- Интеграция с платежными системами для онлайн-оплаты
- Интеграция с системами доставки и логистическими службами
- Интеграция с системами управления складом и поставками


## Архитектура проекта

1. Фронтенд (Frontend):
- Используйте фреймворк ReactJS для разработки клиентской части вашего приложения.
- Разделите компоненты на отдельные модули в соответствии с функциональными требованиями (например, модуль заказов, модуль меню и т.д.).
- Взаимодействие с бэкендом будет осуществляться посредством API запросов.

2. Бэкенд (Backend):
- Используйте Node.js с фреймворком Express.js для разработки серверной части вашего приложения.
- Реализуйте API endpoints для обработки запросов от клиента, такие как создание и управление заказами, управление меню, управление пользователями и т.д.
- Взаимодействие с базой данных будет осуществляться через соответствующие модули.

3. База данных (Database):
- Используйте PostgreSQL в качестве базы данных для хранения данных вашего приложения.
- Создайте таблицы и связи между ними в соответствии с сущностями вашего проекта.
- Обеспечьте безопасность данных, включая аутентификацию и авторизацию пользователей.

4. Аутентификация и авторизация (Authentication and Authorization):
- Реализуйте механизм аутентификации пользователей, позволяющий им входить в систему с помощью логина и пароля.
- Определите различные роли пользователей (администратор, менеджер, сотрудник и т.д.) и установите права доступа в соответствии с их ролями.

5. Интеграции с внешними системами:
- Если требуется интеграция с системами, такими как iiko.ru или ytimes.ru, реализуйте соответствующие модули или API для взаимодействия с этими системами.
- Обмен данными может включать получение информации о меню, синхронизацию заказов и т.д.

6. Отчетность и аналитика:
- Разработайте модуль для создания отчетов и аналитической информации, такой как финансовые отчеты, статистика продаж, анализ эффективности и т.д.
- Используйте соответствующие библиотеки или инструменты для обработки и визуализации данных.

7. Развертывание и хостинг:
- Выберите подходящую платформу или хостинг-провайдера для развертывания вашего приложения, такую как Firebase, Heroku, AWS, или другие.
- Подготовьте конфигурационные файлы и скрипты для автоматического развертывания и настройки вашего приложения на выбранной платформе.
- Убедитесь, что ваше приложение работает стабильно и доступно в онлайн-режиме.

## Как различные компоненты будут взаимодействовать между собой в вашей системе. Вот основные модули и компоненты, которые будут включены в систему

1. Фронтенд (Frontend):
Реализация пользовательского интерфейса с использованием ReactJS.
Интеграция с бэкендом для получения данных и обновления состояния пользовательского интерфейса.

2. Бэкенд (Backend):
Node.js с использованием фреймворка Express.js.
Обработка запросов от фронтенда и взаимодействие с базой данных.
Реализация бизнес-логики и обработка бизнес-процессов.
Обеспечение аутентификации и авторизации пользователей.
Предоставление API для взаимодействия с фронтендом и другими системами.

3. База данных (Database):
Использование PostgreSQL для хранения данных.
Создание таблиц и отношений, соответствующих сущностям вашего проекта.
Обеспечение надежности, безопасности и производительности базы данных.

4. Внешние системы и API:
Интеграция с внешними системами, такими как сервисы доставки, платежные системы и другие, в зависимости от требований проекта.
Использование соответствующих API для обмена данными с внешними системами.

5. Управление и развертывание:
Использование инструментов для управления проектом и версионирования кода, таких как Git и GitHub.
Настройка окружения разработки и развертывания системы, включая установку и настройку необходимых зависимостей и компонентов.


## Модули и компоненты

1. Модуль управления заказами
2. Модуль управления меню
3. Модуль управления складом
4. Модуль обработки платежей
5. Модуль управления персоналом
6. Модуль отчетности
7. Модуль управления клиентами
8. Модуль управления акциями и скидками
9. Модуль интеграции с внешними системами

## Основные классы для каждого модуля

1. Модуль управления заказами:
- OrderManager: класс, отвечающий за обработку и управление заказами.
- Order: класс, представляющий отдельный заказ со своими свойствами и методами.

2. Модуль управления меню:
- MenuManager: класс, отвечающий за управление и обновление меню ресторана.
- MenuItem: класс, представляющий отдельный пункт меню со своими свойствами и методами.

3. Модуль управления складом:
- InventoryManager: класс, отвечающий за учет и управление товарным запасом на складе.
- Product: класс, представляющий отдельный товар со своими свойствами и методами.
4. Модуль обработки платежей:
-PaymentProcessor: класс, отвечающий за обработку платежей от клиентов.
-Payment: класс, представляющий отдельный платеж со своими свойствами и методами.

5. Модуль управления персоналом:
- StaffManager: класс, отвечающий за управление персоналом ресторана.
- Employee: класс, представляющий отдельного сотрудника со своими свойствами и методами.

6. Модуль отчетности:
- ReportingManager: класс, отвечающий за генерацию различных отчетов о работе ресторана.
- Report: класс, представляющий отдельный отчет со своими свойствами и методами.

7. Модуль управления клиентами:
- CustomerManager: класс, отвечающий за управление информацией о клиентах.
- Customer: класс, представляющий отдельного клиента со своими свойствами и методами.

8. Модуль управления акциями и скидками:
- PromotionManager: класс, отвечающий за создание и управление акциями и скидками.
- Promotion: класс, представляющий отдельную акцию или скидку со своими свойствами и методами.

9. Модуль интеграции с внешними системами:
- ExternalSystemIntegration: класс, отвечающий за интеграцию с внешними системами и сервисами.
- ExternalSystem: класс, представляющий отдельную внешнюю систему со своими свойствами и методами.

## Атрибуты и методы классов

1. Classes in the Order Management module:
Class Order:
- Attributes: order_id, creation_date, status, item_list
- Methods: add_item, remove_item, change_status, calculate_total

2. Classes in the Menu Management module:
Class MenuItem:
 - Attributes: item_id, name, price, description

3. Classes in the Inventory Management module:
Class InventoryItem:
 - Attributes: item_id, name, quantity, supplier

4. Classes in the Payment Processing module:
Сlass Payment:
- Attributes: payment_id, amount, status, customer_id

5. Classes in the Staff Management module:
Class Employee:
- Attributes: employee_id, name, position, salary
- Methods: assign_task, update_salary, calculate_payroll

6. Classes in the Reporting module:
Class Report:
- Attributes: report_id, date, type, data

7. Classes in the Customer Management module:
Class Customer:
- Attributes: customer_id, name, email, phone_number

8. Classes in the Promotion and Discount Management module:
Class Promotion:
- Attributes: promotion_id, name, start_date, end_date, discount_percentage

9. Classes in the Integration with External Systems module:
Class ExternalSystem:
- Attributes: system_id, name, endpoint, credentials
- Methods: connect, send_data, receive_data


## Cвязи между классами:
### Определиние, какие классы взаимодействуют между собой. Установление связи между классами, такие как ассоциация, наследование, агрегация или композиция. Это поможет понять, как классы взаимодействуют друг с другом для выполнения задач. 

1. Classes in the Order Management module:
Class Order:
Attributes: order_id, creation_date, status, item_list
Methods: add_item, remove_item, change_status, calculate_total

2. Classes in the Menu Management module:
Class MenuItem:
Attributes: item_id, name, price, description

3. Classes in the Inventory Management module:
Class InventoryItem:
Attributes: item_id, name, quantity, supplier

4. Classes in the Payment Processing module:
Class Payment:
Attributes: payment_id, amount, status, customer_id

5. Classes in the Staff Management module:
Class Employee:
Attributes: employee_id, name, position, salary
Methods: assign_task, update_salary, calculate_payroll

6. Classes in the Reporting module:
Class Report:
Attributes: report_id, date, type, data

7. Classes in the Customer Management module:
Class Customer:
Attributes: customer_id, name, email, phone_number

8. Classes in the Promotion and Discount Management module:
Class Promotion:
Attributes: promotion_id, name, start_date, end_date, discount_percentage

9. Classes in the Integration with External Systems module:
Class ExternalSystem:
Attributes: system_id, name, endpoint, credentials
Methods: connect, send_data, receive_data

## Интерфейсы классов 
### Определение, какие публичные методы и свойства будут доступны для взаимодействия с другими классами или модулями. Здесь можно увидеть видимость и доступность каждого элемента интерфейса. 

1. Order Management module:

- Class Order:
Public methods:
addItem(MenuItem): void (adds a menu item to the order)
removeItem(MenuItem): void (removes a menu item from the order)
calculateTotalPrice(): decimal (calculates the total price of the order)
Properties:
customerName: string (name of the customer)
items: MenuItem[] (array of menu items in the order)

2. Menu Management module:
- Class MenuItem:
Public methods:
getName(): string (returns the name of the menu item)
getPrice(): decimal (returns the price of the menu item)
Properties:
name: string (name of the menu item)
price: decimal (price of the menu item)

3. Inventory Management module:
- Class InventoryItem:
Public methods:
getName(): string (returns the name of the inventory item)
getQuantity(): int (returns the quantity of the inventory item)
Properties:
name: string (name of the inventory item)
quantity: int (quantity of the inventory item)

- Payment Processing module:
4. Class Payment:
Public methods:
processPayment(amount: decimal): void (processes a payment for a given amount)

5. Staff Management module:
- Class StaffMember:
Public methods:
getName(): string (returns the name of the staff member)
getRole(): string (returns the role of the staff member)
Properties:
name: string (name of the staff member)
role: string (role of the staff member)

6. Reporting module:
- Class ReportGenerator:
Public methods:
generateSalesReport(startDate: Date, endDate: Date): Report (generates a sales report for the specified date range)
generateInventoryReport(): Report (generates an inventory report)
Properties:
None

7. Customer Management module:
- Class CustomerManager:
Public methods:
addCustomer(customer: Customer): void (adds a customer to the system)
removeCustomer(customer: Customer): void (removes a customer from the system)
Properties:
None

8. Promotion and Discount Management module:
- Class PromotionManager:
Public methods:
createPromotion(promotion: Promotion): void (creates a new promotion)
deletePromotion(promotion: Promotion): void (deletes an existing promotion)
Properties:
None

9. Integration with External Systems module:
Class ExternalSystemIntegration:
Public methods:
syncDataWithExternalSystem(data: any): void (synchronizes data with an external system)
Properties:
None

## Annotations 

1. Order Management module:
Order class represents a customer order with attributes such as orderId, customer, items, and status.
OrderManager class handles order-related operations like createOrder, updateOrderStatus, and getOrderDetails.

2. Menu Management module:
MenuItem class represents a menu item with attributes like itemId, name, price, and ingredients.
MenuManager class handles menu-related operations such as addMenuItem, removeMenuItem, and getMenuItems.

3. Inventory Management module:
InventoryItem class represents an item in the inventory with attributes like itemId, name, quantity, and location.
InventoryManager class manages the inventory and provides methods like addInventoryItem, updateInventoryQuantity, and getInventoryItemDetails.

4. Payment Processing module:
PaymentProcessor class handles payment processing operations like processPayment, refundPayment, and validatePayment.

5. Staff Management module:
StaffMember class represents a staff member with attributes like staffId, name, position, and contactDetails.
StaffManager class manages staff-related tasks such as addStaffMember, removeStaffMember, and updateStaffDetails.

6. Reporting module:
ReportGenerator class generates reports like sales reports and inventory reports using methods such as generateSalesReport and 
generateInventoryReport.

7. Customer Management module:
CustomerManager class handles customer-related tasks like addCustomer and removeCustomer.

8. Promotion and Discount Management module:
PromotionManager class handles operations related to promotions and discounts, including createPromotion and deletePromotion.

9. Integration with External Systems module:
ExternalSystemIntegration class facilitates data synchronization with external systems through the syncDataWithExternalSystem method.