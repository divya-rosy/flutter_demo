# flutter_demo

A collection of Flutter learning projects. Each folder is a self-contained Flutter
app with its own `pubspec.yaml`.

| App | Path | What it is |
| --- | --- | --- |
| Expense Tracker | [expense_tracker/expense_tracker/](expense_tracker/expense_tracker/) | Track expenses by category, with a weekly chart and swipe-to-delete |
| Quiz App | [quiz_app/](quiz_app/) | Multiple-choice quiz with a results summary screen |
| First Flutter App | [my first app/first_flutter_app/](my%20first%20app/first_flutter_app/) | Starter app from the Flutter codelab (random word pairs, favourites) |

## Requirements

- Flutter SDK with Dart `^3.7.2`
- An Android emulator, iOS simulator, or Chrome for web

## Running an app

Each project is run independently — `cd` into its directory first:

```bash
cd expense_tracker/expense_tracker
flutter pub get
flutter run
```

Substitute the path from the table above for the other apps.

---

## Expense Tracker

The main app in this repo (see the `expensive_tracker_dev` branch).

### Features

- Add an expense with a title, amount, date and category (food, travel, leisure, work)
- Input validation — rejects an empty title, a non-positive amount, or a missing date
- Swipe an expense off the list to delete it, with an **Undo** action in a snackbar
- Bar chart showing spend per category as a share of the highest-spending category
- Light and dark Material 3 themes that follow the system setting
- Empty state prompting you to add your first expense

Expenses are held in memory only — they reset when the app restarts.

### Structure

```
lib/
├── main.dart                       # Themes + app entry point
├── models/
│   └── expense.dart                # Expense, Category, ExpenseBucket
└── widgets/
    ├── expenses.dart               # Stateful screen: list + chart + add/remove
    ├── new_expense.dart            # Modal bottom sheet form
    ├── chart/
    │   ├── chart.dart
    │   └── chart_bar.dart
    └── expenses_list/
        ├── expenses_list.dart      # Dismissible ListView
        └── expenses_item.dart
```

### Dependencies

- [`uuid`](https://pub.dev/packages/uuid) — unique expense IDs
- [`intl`](https://pub.dev/packages/intl) — date formatting

---

## Quiz App

Walks through a fixed set of questions one at a time, then shows a summary of
which answers were correct.

- `lib/quiz.dart` switches between the start, questions and results screens
- `lib/data/questions.dart` holds the question data
- `lib/questions_summary/` renders the per-question result breakdown
- Uses [`google_fonts`](https://pub.dev/packages/google_fonts) for typography

---

## First Flutter App

The official Flutter codelab app — generates random word pairs and lets you
favourite them. Uses [`english_words`](https://pub.dev/packages/english_words)
and [`provider`](https://pub.dev/packages/provider) for state management.
