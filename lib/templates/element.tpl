import { html, css, LitElement } from "lit-element";

class {{CLASS_NAME}} extends LitElement {
  static get properties() {
    return {
      hello: { type: String }
    };
  }

  constructor() {
    super();
    this.hello = "Hello World!";
  }

  static get styles() {
    return css``;
  }

  render() {
    return html`
      <h2>${this.hello}</h2>
    `;
  }
}

window.customElements.define("{{TAG_NAME}}", {{CLASS_NAME}});
