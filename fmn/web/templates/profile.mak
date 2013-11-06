<%inherit file="master.mak"/>
<div class="row">
  <div class="col-md-4">
    <img class="img-circle centered" src="${avatar}"/>
    <h3 class="text-center">${username}<small>@fedoraproject.org</small></h3>
  </div>
  <div class="col-md-7">
    <p>From your profile here, you can manage different notification
    preferences for <a href="https://apps.fedoraproject.org">Fedora Apps</a>.
    We support the following notification contexts currently and hope to add
    more in time.
    </p>

    <p>
      <dl class="dl-horizontal">
      % for ctx in contexts:
        <dt><a href="${ctx.name}">${ctx.name}</a></dt>
        <dd>${ctx.description}</dd>
      % endfor
      </dl>
    </p>
  </div>
</div>
