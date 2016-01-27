<section id="active-tasks">
    <header>Tareas Activas</header>
    <div class="tasks">
        <g:render template="/home/activeTasks/task" collection="${activeTasks}" var="task"/>
    </div>
</section>