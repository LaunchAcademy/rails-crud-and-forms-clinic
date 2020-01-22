Sadly, LiveJournal has undergone some changes that make it less accessible to folks nowadays. That's why we are launching Launch Journal to fill the void and allow folks to add any zany entries that they like!

### Getting Started
To get started, run the following commands.

```no-highlight
bundle
bundle exec rake db:create
```

For this challenge, assume all journals and entries are submitted anonymously (user authentication is **not** required).

#### Leading Questions
* What difference between `:new` and `:create` do I need to distinguish?
* Why do I have to supply an empty `@journal` object to a form?
* When nesting resources, when do I nest a resource versus not nest?
* What do I do differently when doing a nested form_for? Both in `:new` and `:create`

### Core

Create a rails app with the following entities. Satisfy the acceptance criteria for each.

##### Journal
* Must have a name
* Must have a calendar year
* Must have an author
* Can optionally have a description
* Can optionally have a theme e.g. personal, workout, creative writing, etc.
* Can have many entries

**Acceptance Criteria**
* Visiting the `/journals` path should contain a list of journals.
* Visiting the `/journals/new` path should display a form for creating a new journal.
* Visiting the `/journals/10` path should show the journal details for a journal with the ID of 10.
* Visiting the root path should display a list of all journals.
* When adding a new journal, if I fill out the form correctly, I should see the page for the newly created journal.
* When adding a new journal, if I fill out the form incorrectly and submit the form, I should see the form and be displayed the validation errors.

##### Entry
* Must have a title
* Must have a body
* Belongs to a journal

**Acceptance Criteria**
* Visiting the `/journals/2` should show an index of ENTRIES for that journal
* Visiting the `/entries/4` should show all of the details for a given entry, including the journal it belongs to.
* Visiting the `/journals/2/entries/new` should should display a form for creating a new entry in the journal with an id of 2


### Non-Core
* Visiting the `/entries/4/edit` should display an edit form for a journal entry
* If an author is not designated, "Anonymous" is set as the journal's author by default.
* Refactor your journal form to allow for a dropdown for the year field. Users should see years from 2000 to 2020 when making their selection.
* Create a "Themes" resource, and allow a journal to have multiple themes, as well as index, show, new and create actions for this new entity. You'll need to refactor your current app and make new associations to allow a many-to-many relationship between themes and journals. You'll also need to update your journal form to only allow a user to designate an already existing theme when creating a new journal.  
