import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["All your movies", "in one place"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
