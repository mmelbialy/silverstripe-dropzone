<div id="$Name" class="field<% if $extraClass %> $extraClass<% end_if %> supported">
    <% if $Title %><label class="left" for="$ID">$Title</label><% end_if %>
    <div id="{$Name}Dropzone" class="dropzone-holder <% if $isCMS %>backend<% end_if %>" data-config='$ConfigJSON'>
        <p class=""><%t Dropzone.ATTACHFILESHERE_OR "Attach files by dropping them in here, or" %>  <a class="dropzone-select"><%t Dropzone.BROWSEYOURCOMPUTER "browse your computer" %></a>.</p>
        <ul data-container data-attachments class="file-attachment-field-previews $View">
            <% loop $AttachedFiles %>
                <% include FileAttachmentField_attachments File=$Me, Scope=$Up %>
            <% end_loop %>
        </ul>



        <template>
            $PreviewTemplate
        </template>
        <div class="attached-file-inputs" data-input-name="$InputName">
            <% if $AttachedFiles %>
                <% loop $AttachedFiles %>
                <input class="input-attached-file" type="hidden" name="$Up.InputName" value="$ID">
                <% end_loop %>
            <% end_if %>
        </div>
        <div class="attached-file-deletions" data-input-name="$InputName"></div>
        <div style="clear:both;"></div>
        
        <% if not $AutoProcess %>        
            <button class="process" data-auto-process><%t Dropzone.UPLOADFILES "Upload file(s)" %></button>
        <% end_if %>

    </div>

    <div class="unsupported">
        <p><strong><%t Dropzone.NOTSUPPORTED "Your browser does not support HTML5 uploads. Please update to a newer version." %></strong></p>
    </div>

</div>