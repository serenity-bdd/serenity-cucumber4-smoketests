package starter.navigation;

import net.thucydides.core.annotations.Step;

public class NavigateTo {

    GoogleHomePage homePage;

    @Step("Open the Google home page")
    public void theGoogleHomePage() {
        homePage.open();
    }
}
