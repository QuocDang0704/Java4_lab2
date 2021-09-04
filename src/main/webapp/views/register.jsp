<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!doctype html>
    <html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

        <title>Register</title>
    </head>

    <body>
        <main class="container">
            <header class="row">
                <div class="col">
                    <div class="alert alert-success">
                        <h1>Dang ky</h1>
                    </div>

                </div>
            </header>
            <section class="row">
                <div class="col-7">
                    <div class="row">
                        <div class="col">
                            <form action="RegisterServlet" method="POST">
                                <div class="form-group">
                                    <label for="username">Ten Dang Nhap :</label>
                                    <input type="text" id="username" name="username" class="form-control" />
                                </div>

                                <div class="form-group">
                                    <label for="password">Mat khau</label>
                                    <input type="password" name="password" id="password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="genderF">Gioi tinh:</label>
                                    <div class="form-check form-check-inline">
                                        <input type="radio" class="form-check-input" id="genderM" name="gender">
                                        <label for="genderM">Male</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input type="radio" class="form-check-input" id="genderF" name="gender">
                                        <label for="genderF">Female</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" name="married" id="married">
                                        <label for="married">Da co gia dinh chua</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nationality">Quoc tich:</label>
                                    <select name="nationality" id="nationality" class="form-control">
									<option value="vi">vietnam</option>
									<option value="us">My</option>
									<option value="jp">NhatBan</option>
								</select>
                                </div>
                                <div class="form-group">
                                    <label for="favorites">So thich</label>
                                    <div class="form-check form-check-inline">
                                        <input type="checkbox" class="form-check-input" name="favorites" id="favorites" value="Read">
                                        <label for="favorites">Doc Sach</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input type="checkbox" class="form-check-input" name="favorites" id="favorites" value="Music">
                                        <label for="favorites">Am Nhac</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input type="checkbox" class="form-check-input" name="favorites" id="favorites" value="Tourist">
                                        <label for="favorites">Du Lich</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input type="checkbox" class="form-check-input" name="favorites" id="favorites" value="others">
                                        <label for="favorites">khac</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="note">Ghi chu:</label>
                                    <textarea name="note" id="note" rows="3" class="form-control"></textarea>
                                </div>
                                <hr>
                                <button type="submit" class="btn btn-primary">Dang Ky</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-5">
                    <h3>Thong tin da duoc dang ky</h3>
                    <ul>
                        <li>UserName: ${username}</li>
                        <li>password: ${password}</li>
                        <li>gender: ${gender}</li>
                        <li>married: ${married}</li>
                        <li>nationality: ${nationality}</li>
                        <li>favorites: ${favorites}</li>
                        <li>note: ${note}</li>
                    </ul>
                </div>
            </section>
        </main>

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

    </body>

    </html>