# Inventory Dashboard

<!-- Define the top horizontal div -->
<div class="top-div">
    <!-- <h2>Select file with the list of services</h2> -->
    <input id="fileupload" type="file">
</div>

<script>
    // read local file using FileReader API
    // const fileInput = document.createElement('input');
    // fileInput.type = 'file';
    const fileInput = document.getElementById('fileupload');
    fileInput.addEventListener('change', event => {
        const file = event.target.files[0];
        const reader = new FileReader();
        reader.readAsText(file);
        reader.onload = event => {
            const data = event.target.result;

            // parse the data and loop through the list of names
            const names = data.trim().split('\n');
            names.forEach(name => {
                const tabMenuHtml = `<button class="tablinks active" onclick="openTab(event, '${name}')">${name}</button>`;
                const tabHtml = `<div id="${name}" class="tabcontent" style="display:block">
                                    <iframe src="out/${name}.html"></iframe>
                                </div>`
                const tabMenuDiv = document.getElementById('services-menu');
                tabMenuDiv.innerHTML += tabMenuHtml;
                const tabsDiv = document.getElementById('services-tab');
                tabsDiv.innerHTML += tabHtml;
            });
        };
    });
    document.body.appendChild(fileInput);
</script>

<!-- Define the tab container -->
<div id="services-menu" class="tab">

</div>

<!-- Define the iframe container -->
<div id="services-tab" class="iframe-container">


</div>

<!-- Script to handle tab switching -->
<script>
    function openTab(evt, tabName) {
        // Declare variables
        var i, tabcontent, tablinks;

        // Hide all tab content
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }

        // Deactivate all tab buttons
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }

        // Show the selected tab content and activate the corresponding button
        document.getElementById(tabName).style.display = "block";
        evt.currentTarget.className += " active";
    }
</script>