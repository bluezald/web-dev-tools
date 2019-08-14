## Automated Testing
- good for mechanical and logical assertions

## Terms
- sut - system under test

### Different Types of Automated Tests
- Unit Tests - user perspective
- Integration Tests - things together
- UI Tests - things in isolation

### Unit Testing
- Tests the public API
- Tests the logical behavior
- Use mocks when collaborating with other classes
- good for low-level things
- It is not for database access, services or file system

- **Good Practices**
  - Test boundary values, write both positive and negative tests

- Three conceptual phases of a test: AAA (Arrange, Act, Assert)

### TDD
- Write a test, run and check if it fails, write implementation of code and make it pass
- Run if it passes, Refactor, repeat until no more sensible failing tests can be written

- **State-based Testing**
  -  Setup any required initial state
  - use fake ones
  - execute the behavior that's being tested
  - assert that the resulting state is as expected

```csharp
public void ShouldDeclineUnderAgeApplicant()
{
  var fakeGateway = new Mock<ICreditCheckerGateway>();
  var sut = new CreditCardApplicationScorer(fakeGateway.Object);
  var application = new CreditCardApplication {
    ApplicantAgeInYearss = 20
  };
  var result = sut.ScoreApplication(application)
  Assert.That(result, Is.False);
}
```

- **Interaction-based Testing**
  - Assert tat the fake collaborators were interacted with as expected

```csharp
public void ShouldDeclineUnderAgeApplicant()
{
  var fakeGateway = new Mock<ICreditCheckerGateway>();
  var sut = new CreditCardApplicationScorer(fakeGateway.Object);
  var application = new CreditCardApplication {
    ApplicantAgeInYearss = 30
  };
  sut.ScoreApplication(application)
  fakeGateway.Verify(x=>x.HasGoodCreditHistory(It.IsAny<string>()));
}
```

### Integration Testing
- Communication between different parts of the system
- Testing that a logical part (subsystem) works correctly
- dont need to test every possible code through every class
- Think about value / ROI

**Different Levels of Integration Testing**
- Internal Classes
  - generally looking at state / results interacting together
- External Components
  - Database, File System, Web Service or Library DLL
  - Gateway Design Pattern - an object that encapsulates access to an external system or resource
- Internal Logical Subsystems
- Internal application service layer

## How to choose which tests to automate
- Business critical paths – the features or user flows that if they fail, cause a considerable damage to the business.
- Tests that need to be run against every build/release of the application, such as smoke test, sanity test and regression test.
- Tests that need to run against multiple configurations — different OS & Browser combinations.
- Tests that execute the same workflow but use different data for its inputs for each test run e.g. data-driven.
- Tests that involve inputting large volumes of data, such as filling up very long forms.
- Tests that can be used for performance testing, like stress and load tests.
- Tests that take a long time to perform and may need to be run during breaks or overnight.
- Tests during which images must be captured to prove that the application behaved as expected, or to check that a multitude of web pages looks the same on multiple browsers.

- References:
  - https://www.testingexcellence.com/choose-tests-automate/

## Functional UI Testing
