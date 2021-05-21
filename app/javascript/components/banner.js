import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["All your favourite movies", "in one place"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
