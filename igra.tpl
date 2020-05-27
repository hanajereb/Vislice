% import model
%rebase('base.tpl', title='Vislice')

<table>
<tr>
  <td>
    <h2>{{igra.pravilni_del_gesla()}}</h2><br>
  </td>
</tr>
<tr>
  <td>
    Nepravilni ugibi : {{igra.nepravilni_ugibi()}} <br>
  </td>
</tr>
<tr>
  <td>
    <img src="../img/{{igra.stevilo_napak()}}.jpg" alt="obesanje">
    Stopnja obešenosti : {{igra.stevilo_napak()}} / {{model.STEVILO_DOVOLJENIH_NAPAK + 1}} <br>
  </td>
</tr>
</table> 

% if poskus == model.ZMAGA:

<h1>ZMAGA!</h1>

<form action="/nova_igra/" method="post">
  <button type="submit">Nova igra</button>
</form>

% elif poskus == model.PORAZ:

<h1>BOOOHOOO LOSER!</h1>

pravilno geslo: {{igra.geslo}}

<form action="/nova_igra/" method="post">
  <button type="submit">Nova igra</button>
</form>

% else:

<form action="/igra/" method="post">
  Črka: <input type="text" name="crka">
  <button type="submit">Pošlji ugib</button>
</form>

% end



