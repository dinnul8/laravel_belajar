@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Category</h1>
</div>

<div class="col-lg-6">
<form method="post" action="/dashboard/users/{{ $user->id }}" class="mb-5" enctype="multipart/form-data">
  @method('put')
    @csrf
    <div class="mb-3">
      <label for="name" class="form-label">Name</label>
      <input type="text" class="form-control @error('name') is-invalid
      @enderror" id="name" name="name" required autofocus value="{{ old('name', $user->name) }}">
      @error('name')
        <div class="invalid-feedback">
          {{ $message }}
        </div>
      @enderror
    </div>
    <div class="mb-3">
      <label for="username" class="form-label">Username</label>
      <input type="text" class="form-control @error('username') is-invalid @enderror" 
      id="username" name="username" required autofocus value="{{ old('username', $user->username) }}">
      @error('username')
        <div class="invalid-feedback">
          {{ $message }}
        </div>
      @enderror
    </div>
    <div class="mb-3">
      <label for="email" class="form-label">Email</label>
      <input type="text" class="form-control @error('email') is-invalid @enderror"
      id="email" name="email" required value="{{ old('email', $user->email) }}">
      @error('email')
        <div class="invalid-feedback">
          {{ $message }}
        </div>
      @enderror
    </div>
    <div class="mb-3">
      <label for="password" class="form-label">Password</label>
      <input type="text" class="form-control @error('password') is-invalid @enderror"
      id="password" name="password" required>
      @error('password')
        <div class="invalid-feedback">
          {{ $message }}
        </div>
      @enderror
    </div>
    <div class="mb-3">
      <label for="is_admin" class="form-label">Role</label>
      <select class="form-select" name="is_admin">
            <option {{ $user->is_admin == 0 ? "selected" : ""}} value="0" selected>User</option>
            <option {{ $user->is_admin == 1 ? "selected" : ""}} value="1">Admin</option>
      </select>
    </div>
    <button type="submit" class="btn btn-primary">Update category</button>
</form>
</div>
{{-- <script>
  const title = document.querySelector('#name');
  const slug = document.querySelector('#slug');

  title.addEventListener('change', function(){
    fetch('/dashboard/posts/checkSlug?title=' + title.value)
      .then(response => response.json())
      .then(data => slug.value = data.slug)
  });
  
</script> --}}
@endsection