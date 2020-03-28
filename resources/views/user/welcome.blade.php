@extends('layout.common')
@section('content')

<!-- <?php //pr(Auth::user()); ?> -->

<h1 align="center">User Info</h1>
<a id="logoutLink" class="nav-link" href="javascript:void(0)"><i class="fa fa-power -off"></i>Logout</a>
<table border="1" width="70%" align="center">
      <tr>
      <th class="cricket">First Name</th>
      <th class="cricket">Last Name</th>
      <th class="cricket">Username</th>
      <th class="cricket">Email</th>
      <th class="cricket">Mobile</th>
    </tr>

    <tr align="center">
      <td class="cricket">{{ (Auth::user()->firstname) ? Auth::user()->firstname : 'N/A' }}</td>
      <td class="cricket">{{ (Auth::user()->lastname) ? Auth::user()->lastname : 'N/A'}}</a></td>
      <td class="cricket">{{ Auth::user()->username }}</td>
      <td class="cricket">{{ Auth::user()->email }}</td>
      <td class="cricket">{{ Auth::user()->mobile }}</td>
    </tr>
  </table>
@endsection

@section('scripts')
<script type="text/javascript">

$( "#logoutLink" ).click( function () {
    window.location.href = "logout";
} );
</script>
@endsection
