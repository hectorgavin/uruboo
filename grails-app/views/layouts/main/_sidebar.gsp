<aside id="sidebar">
    <span class="toggle"><<</span>
    <ul id="my-overview" class="sidebar-block">
        <li class="item">Hola ${currentAssistant?.firstName}</li>
    </ul>
    <ul id="my-tools" class="sidebar-block">
        <li class="item">Inicio</li>
        <li class="item">Bandeja de entrada</li>
        <li class="item">Calendario</li>
    </ul>
    <ul id="my-clients" class="sidebar-block">
        <g:each in="${currentAssistant?.customers}" var="customer">
            <li><tmpl:/layouts/main/sidebar/client customer="${customer}"/></li>
        </g:each>
    </ul>
</aside>