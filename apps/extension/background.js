chrome.webNavigation.onBeforeNavigate.addListener(
  function(details) {
    const blockedSites = ["facebook.com", "twitter.com"];
    if (blockedSites.some(site => details.url.includes(site))) {
      chrome.tabs.update(details.tabId, { url: "about:blank" });
    }
  },
  { url: [{ urlMatches: "<all_urls>" }] }
);
