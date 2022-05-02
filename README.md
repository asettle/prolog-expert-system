# Viral Outbreak in Virusland: Practical Programming Assignment

This project creates an expert system using Prolog SWI that accepts
patient-based information from the fictional environment of Virusland
that is experiencing an outbreak of a new viral infection.

For more information on the task at hand, see `prac-assessment.md`.

I have also defined a series of rules in human-readable table format. Please
see the `factor-table.xlxs` file for more information.

## How do I get started?

Before you begin, ensure you install SWI-Prolog. This differs per-operating
system. The instructions for this project are for using and working with
SWI-Prolog on Mac.

More information: https://www.swi-prolog.org/Download.html

Ensure you have cloned this repository and it resides on your locally accessible
system.

To run SWI-Prolog in your terminal, enter the following in your bash prompt:

```bash
$ swipl
```

Next, change your your directory within the prolog prompt to be in this project:

```prolog
cd('~/prolog-expert-system/')
```

Run the `pwd` command to ensure you're within the working directory.
For example:

```prolog
?- pwd
|    .
% /Users/ASettle/University/prolog-expert-system/
true.
```

Provided the output is `true`, you will now be able to run the expert system.

### Running the expert system

To run the code, change directory to `/src/` on your prolog terminal and execute
the following:

1.
```prolog
?- [diagnosis].
true.
```

2.
```prolog
?- diagnose(Diagnosis).
```

Answer the question prompts with either "yes" or "no" to receive a diagnosis
from the expert system. The output should look as follows in your terminal:

```prolog
?- diagnose(Diagnosis).
Do you know if you been exposed to the virus in the last 14 days?: yes.
Do you have symptoms?: |: yes.

Diagnosis = 'Very likely to be infected'.
```

## Contributing

I have defined some basic contributing guidelines in the `contributing.md`
in `/doc/`. Please see for more details.

Do not submit directly to the master branch under any circumstances.
Your pull request will be reverted in this case.

## License

Copyright 2021 Alexandra Settle

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
