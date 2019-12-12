package starter.stepdefinitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;
import starter.navigation.NavigateTo;
import starter.search.SearchFor;
import starter.search.SearchHomepageFor;
import starter.search.SearchResult;

import static org.assertj.core.api.Assertions.assertThat;
import static starter.matchers.TextMatcher.textOf;

public class SearchOnDuckDuckGoStepDefinitions {

    @Steps
    NavigateTo navigateTo;

    @Steps
    SearchHomepageFor searchHomepageFor;

    @Steps
    SearchFor searchFor;

    @Steps
    SearchResult searchResult;

    @Given("^(?:.*) is on the search page")
    public void i_am_on_the_DuckDuckGo_home_page() {
      // navigateTo.theGoogleHomePage();
    }

    @When("^s?he (?:searches|has searched) for \"(.*)\"")
    public void i_search_for(String term) {
       // searchHomepageFor.term(term);
    }

    @When("^s?he searches again for \"(.*)\"")
    public void i_search_again_for(String term) {
       // searchFor.term(term);
    }

    @Then("all the result titles should contain the word {string}")
    public void all_the_result_titles_should_contain_the_word(String expectedTerm) {
        if (expectedTerm.equals("FAILED")) {
            throw new AssertionError("Oh crap!");
        }
        if (expectedTerm.equals("BROKEN")) {
            throw new Error("Oh crap!");
        }
//        assertThat(searchResult.titles())
//                .allMatch(title -> textOf(title).containsIgnoringCase(expectedTerm));
    }
}
