(() => {
  let initContentToggle = () => {
    let toggleable = [].slice.call($$('.js-toggleable'));

    $('.js-toggleContent').addEventListener('click', (ev) => {
      ev.preventDefault();
      toggleable.forEach((el) => el.classList.toggle('is-collapsed'));
    });
  }

  let initFormCache = (form) => {
    let store = window.localStorage;

    let region = store.getItem('region');
    let realm = store.getItem('realm');

    let regionField = $('.js-redirectForm-region', form);
    let realmField = $('.js-redirectForm-realm', form);

    if (region) { regionField.value = region; }
    if (realm) { realmField.value = realm; }

    form.addEventListener('submit', (ev) => {
      store.setItem('region', regionField.value.trim());
      store.setItem('realm', realmField.value.trim());
    });
  }

  let initFormRedirect = (form) => {
    form.addEventListener('submit', (ev) => {
      ev.preventDefault();

      let url = '/' + ['region', 'realm', 'name']
        .map((key) => $(`.js-redirectForm-${key}`, form))
        .map((el) => el && el.value.trim())
        .filter(Boolean)
        .join('/');

      document.location = url
    });
  }

  let form = $('.js-redirectForm');

  initContentToggle();
  initFormCache(form);
  initFormRedirect(form);
}());
