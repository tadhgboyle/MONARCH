{include file='header.tpl'}
{include file='navbar.tpl'}

<h2 class="ui header">
  {$CONNECT_WITH_AUTHME}
  <div class="sub header">{$AUTHME_INFO}</div>
</h2>

{if count($ERROR)}
  <div class="ui error icon message">
    <i class="x icon"></i>
    <div class="content">
      <div class="header">Error</div>
      <ul class="list">
        {foreach from=$ERROR item=error}
          <li>{$error}</li>
        {/foreach}
      </ul>
    </div>
  </div>
{/if}

<div class="ui padded segment" id="authme-email">
  <div class="ui stackable grid">
    <div class="ui centered row">
      <div class="ui sixteen wide tablet ten wide computer column">
        <form class="ui form" action="" method="post" id="form-authme-email">
          <div class="field">
            <label for="inputUsername">{$USERNAME}</label>
            <input type="text" id="inputUsername" name="username" placeholder="{$USERNAME}" tabindex="1">
          </div>
          <div class="field">
            <label for="inputPassword">{$PASSWORD}</label>
            <input type="password" id="inputPassword" name="password" placeholder="{$PASSWORD}" tabindex="2">
          </div>
          {if isset($RECAPTCHA)}
            <div class="field">
              <div class="g-recaptcha" data-sitekey="{$RECAPTCHA}" tabindex="3"></div>
            </div>
          {/if}
          <div class="inline field">
            <div class="ui checkbox">
              <input type="checkbox" name="remember" id="remember" value="1" tabindex="4">
              <label>{$REMEMBER_ME}</label>
            </div>
          </div>
          <input type="hidden" name="token" value="{$TOKEN}">
          <input type="submit" class="ui primary button" value="{$SUBMIT}" tabindex="5">
        </form>
      </div>
    </div>
  </div>
</div>

{include file='footer.tpl'}