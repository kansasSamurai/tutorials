'use strict';

/*  A class to encapsulate user interface features.
 *
 *  Requires:   
 *      animate.css
 *      app.js :: app
 * 
 */ 
const UI = {

    /*  animate.css
        Helper function as found on their website:  https://animate.style/
        
        Example Usage:
        UI.animateCSS('.panel-body', 'rotateOut');
        */
    animateCSS: function(element, animation, prefix = 'animate__') {

         // We create a Promise and return it
        return new Promise((resolve, reject) => {
            const node = document.querySelector(element);
            const animationName = `${prefix}${animation}`;

            // Add the API classname for the desired animation
            node.classList.add(`${prefix}animated`, animationName);

            // When the animation ends, we clean the classes and resolve the Promise
            function handleAnimationEnd(event) {
                event.stopPropagation();
                node.classList.remove(`${prefix}animated`, animationName);
                resolve('Animation ended');
            }

            node.addEventListener('animationend', handleAnimationEnd, { once: true });
        });
    },

    /*  Slide the given element(elm) in a way that toggles its current state.
        i.e. if collapsed, expand(slideDown). if expanded, collapse(slideUp).
     */
    slideToggle: function(elm, duration = app.animation.speed) {
        if (window.getComputedStyle(elm).display === 'none') {
            return this.slideDown(elm, duration);
        } else {
            return this.slideUp(elm, duration);
        }
    },

    /*  Slide the given element(elm) up until its size/height is zero.
        (removes the transient style properties when complete)
     */
    slideUp: function(elm, duration = app.animation.speed) {
        if (!elm.classList.contains('transitioning')) {
            elm.classList.add('transitioning');
            elm.style.transitionProperty = 'height, margin, padding';
            elm.style.transitionDuration = duration + 'ms';
            elm.style.boxSizing = 'border-box';
            elm.style.height = elm.offsetHeight + 'px';
            elm.offsetHeight;
            elm.style.overflow = 'hidden';
            elm.style.height = 0;
            elm.style.paddingTop = 0;
            elm.style.paddingBottom = 0;
            elm.style.marginTop = 0;
            elm.style.marginBottom = 0;
            window.setTimeout( () => {
                elm.style.display = 'none';
                elm.style.removeProperty('height');
                elm.style.removeProperty('padding-top');
                elm.style.removeProperty('padding-bottom');
                elm.style.removeProperty('margin-top');
                elm.style.removeProperty('margin-bottom');
                elm.style.removeProperty('overflow');
                elm.style.removeProperty('transition-duration');
                elm.style.removeProperty('transition-property');
                elm.classList.remove('transitioning');
            }, duration);
        }
    },

    /*  Slide the given element(elm) down until it is the original size.
        (removes the transient style properties when complete)
     */
    slideDown: function(elm, duration = app.animation.speed) {
        if (!elm.classList.contains('transitioning')) {
            elm.classList.add('transitioning');
            elm.style.removeProperty('display');
            let display = window.getComputedStyle(elm).display;
            if (display === 'none') display = 'block';
            elm.style.display = display;
            let height = elm.offsetHeight;
            elm.style.overflow = 'hidden';
            elm.style.height = 0;
            elm.style.paddingTop = 0;
            elm.style.paddingBottom = 0;
            elm.style.marginTop = 0;
            elm.style.marginBottom = 0;
            elm.offsetHeight;
            elm.style.boxSizing = 'border-box';
            elm.style.transitionProperty = "height, margin, padding";
            elm.style.transitionDuration = duration + 'ms';
            elm.style.height = height + 'px';
            elm.style.removeProperty('padding-top');
            elm.style.removeProperty('padding-bottom');
            elm.style.removeProperty('margin-top');
            elm.style.removeProperty('margin-bottom');
            window.setTimeout( () => {
                elm.style.removeProperty('height');
                elm.style.removeProperty('overflow');
                elm.style.removeProperty('transition-duration');
                elm.style.removeProperty('transition-property');
                elm.classList.remove('transitioning');
            }, duration);
        }
    },

};
