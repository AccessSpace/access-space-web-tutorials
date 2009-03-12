<table>  
   <tr>  
       <th>Id</th>  
       <th>Name</th>  
       <th>Email</th>  
       <th>Banned</th>  
   </tr>  
<? foreach($aUserList as $aUser): ?>  
   <tr>  
       <td align="center"><?=$aUser['id'];?></td>  
       <td><?=$aUser['name'];?></td>  
       <td><a href="mailto:<?=$aUser['email'];?>"><?=$aUser['email'];?></a></td>  
       <td align="center"><?=($aUser['banned'] ? 'X' : '&nbsp;');?></td>  
   </tr>  
<? endforeach; ?>  
</table>
