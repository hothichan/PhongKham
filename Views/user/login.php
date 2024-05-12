<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
        />
        <link
            rel="stylesheet"
            href="D:\code\Web Đặt lịch\Website_PhuocThinh\Website_PhuocThinh\styles\style.css"
        />
        <title>Document</title>
    </head>
    <body>
        <div
            class="container d-flex justify-content-center align-items-center min-vh-100"
        >
            <div class="row border rounded-5 p-3 bg-while shadow box-area">
                <div
                    class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box"
                    style="background: #1087be"
                >
                    <div class="featured-image mb-3">
                        <img
                            src="./public/img/login/a1dn.png"
                            class="img-fluid"
                            style="width: 280px; height: 200px"
                        />
                    </div>
                    <p
                        class="text-white fs-2"
                        style="
                            font-family: 'Edu NSW ACT Foundation', Courier,
                                monospace;
                            font-weight: 600;
                        "
                    >
                        Verified
                    </p>
                    <small
                        class="text-white text-wrap text-center fs-4"
                        style="
                            width: 17rem;
                            font-family: 'Edu NSW ACT Foundation';
                        "
                    >
                        Reputation creates trust</small
                    >
                </div>

                <div class="col-md-6 right-box d-flex">
                    <div class="row align-items-center">
                        <div class="header-text mb-4">
                            <h2>Hello,again</h2>
                            <p>We are very happy to have your back</p>
                        </div>
                        <form action="index.php?controller=user&action=login" method="post">

                            <div
                                class="input-group mb-3"
                                style="font-family: 'Edu NSW ACT Foundation'"
                            >
                                <input
                                    type="text"
                                    placeholder="User name"
                                    class="form-control form-control-lg bg-light fs-6"
                                    name="sdt"
                                />
                            </div>
                            <div
                                class="input-group mb-1"
                                style="font-family: 'Edu NSW ACT Foundation'"
                            >
                                <input
                                    type="password"
                                    placeholder="Password"
                                    class="form-control form-control-lg bg-light fs-6"
                                    name="password"
                                />
                            </div>
                            <div
                                class="form-check mb-2 d-flex justify-content-between"
                                style="font-family: 'Edu NSW ACT Foundation'"
                            >
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input
                                            class="form-check-input"
                                            type="checkbox"
                                            name="remember"
                                        />
                                        Remember me
                                    </label>
                                </div>
                                <div class="forgot">
                                    <small><a href="#">Forgot Password?</a></small>
                                </div>
                            </div>
                            <div>
                                <button type="submit" class="btn btn-lg btn-primary w-100 fs-6">
                                    Đăng nhập
                                </button>
                            </div>
                        </form>
                        <div>
                        <?php
                            if(!empty($warning['0'])) {
                                echo "<p style='color: red; padding-top:4px;'>{$warning}</p>";
                            }
                        ?>
                        </div>
                        <div class="input-group mb-3 d-flex">
                            <div>
                                <button class="btn btn-lg btn-light w-100 fs-6">
                                    <img
                                        src="./public/img/login/a1fb.png"
                                        style="width: 20px"
                                        class="me-2"
                                    />
                                    <small>Sign in with FaceBook</small>
                                </button>
                            </div>

                            <div>
                                <button class="btn btn-lg btn-light w-100 fs-6">
                                    <img
                                        src="./public/img/login/gg2.png"
                                        style="width: 30px"
                                        class="me-2"
                                    />
                                    <small>Sign in with Google</small>
                                </button>
                            </div>
                        </div>

                        <!-- day la div cua create account -->
                        <div
                            class="input-group mb-2 .bg-warning d-flex fs-5 justify-content-between"
                            style="font-family: 'Edu NSW ACT Foundation'"
                        >
                            <div class="d-flex">
                                <div class="me-3">
                                    <p>Khách hàng mới?</p>
                                </div>
                                <div class="Dangky">
                                    <small
                                        ><a
                                            href="index.php?controller=user&action=register"
                                            style="color: black"
                                            >Tạo tài khoản mới</a
                                        ></small
                                    >
                                </div>
                            </div>
                            <div class="Dangky">
                                <small
                                    ><a
                                        href="index.php?controller=home&action=index"
                                        style="color: black"
                                        >Quay về</a
                                    ></small
                                >
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
