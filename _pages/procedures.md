---
title: Procedures support evaluation (Rel 17)
layout: menu
permalink: /procedures/
---

<script>
const PROCEDURES_FILE = "{{ site.baseurl }}/procedures.txt";
// XXX: To add new core network update list
const coreNetworks = [ 'open5gs', 'free5gc', 'oai']
// Define a function to read the menu items from the file
async function getProceduresList() {
  const response = await fetch(PROCEDURES_FILE);
  const text = await response.text();
  const lines = text.trim().split("\n");
  const items = lines.map(line => {
    return { name: line, title: line.replaceAll('_', ' ') };
  });
  return items;
}

// Define a function to generate the menu HTML
async function generateMenu() {
  // Get the menu container element
  const menuContainer = document.getElementById("menu");

  // Read the menu items from the file
  const procs = await getProceduresList();

  const tocHtml = procs.map((proc, index) => {
    return `<li><a href="#${proc.name}">${proc.title}</a></li>`
  }).join("");

  // Generate the HTML for the menu
  const tabsHtml = procs.map((proc, index) => {
    const tabHtml = `
    <div id="${proc.name}">
        <h2>${proc.title}</h2>
        <div class="tabs">
          ${coreNetworks.map(c => {
              return `<button class="tablinks" onclick="openProcedure(event, '${proc.name}-${c}')">${c}</button>`
          }).join("")}
        </div>

        ${coreNetworks.map((c,i) => {
            return `
        <div class="tabcontent ${i === 0 ? 'active' : ''}" id="${proc.name}-${c}" style="${i === 0 ? 'display: block' : ''}">
            <h2>${c}</h2>
            <img src="{{ site.baseurl }}/comparison/${c}/Procedures/${proc.name}.png" alt="/comparison/${c}/Procedures/${proc.name}.png">
        </div>
        `;
        }).join("")}
    </div>
    `;
    return tabHtml;
  }).join("");

  const menuHtml = `
    <div class="toc">
      <h2>Table of Contents</h2>
      <ul>
        ${tocHtml}
      </ul>
      <div class="procedures">
        ${tabsHtml}
      </div>
    </div>
  `;
  // Set the generated HTML as the contents of the menu container
  menuContainer.innerHTML = menuHtml;
}

// Call the generateMenu() function to generate the menu
generateMenu();
</script>