package starter.search;

import net.serenitybdd.core.steps.UIInteractionSteps;
import net.thucydides.core.annotations.Step;

public class SearchHomepageFor extends UIInteractionSteps {

    @Step("Search for term {0}")
    public void term(String term) {
        $(SearchFormHomepage.SEARCH_FIELD_HOMEPAGE).clear();
        $(SearchFormHomepage.SEARCH_FIELD_HOMEPAGE).type(term);
        $(SearchFormHomepage.SEARCH_BUTTON_HOMEPAGE).click();
    }
}
